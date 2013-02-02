name "production"
description "For Prods!"
def_run_list = ["recipe[motd]", "recipe[users]"]
env_run_lists({
	"_default" => def_run_list,
	"dev" => def_run_list,
	"production" => [
		"recipe[motd]"
]})
cookbook "apache", "= 0.2.0"
override_attributes({
	"pci" => {
	"in_scope" => true
}
})
