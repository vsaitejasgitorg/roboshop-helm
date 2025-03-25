default:
		 helm install $(component) . -f env-$(env)/$(component).yaml

debug:
		 helm install $(component) . -f env-$(env)/$(component).yaml --debug