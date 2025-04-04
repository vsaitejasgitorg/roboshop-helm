default:
		git pull
		 helm upgrade -i $(component) . -f env-$(env)/$(component).yaml --set imageTag=$(imageTag)

debug:
		git pull
		 helm upgrade -i $(component) . -f env-$(env)/$(component).yaml --debug
dev:
		git pull
		for chart in frontend cart catalogue user payment shipping ; do make env=dev component=$$chart;done
