EXCLUSIONS :=  .git .gitignore .bin 
CANDIDATES := $(wildcard .??*)
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

# 更新
update:
	git pull origin master
#	git submodule init
#	git submodule update
#	git submodule foreach git pull origin master

# デプロイ
deploy:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
  
# イニシャライズ
init_N:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/init/init_N.sh

init_u:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/init/init_u.sh

help: ## Self-documented Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
