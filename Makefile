default:
		 helm install $(component) . -f env-$(env)/$(component).yaml