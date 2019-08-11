jupyterlab :
	docker run -u root -p 8888:8888 -v $(CURDIR):/app prasoon2211/python_ds jupyter lab --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.iopub_data_rate_limit=1000000000000
notebook :
	docker run -u root -p 8888:8888 -v $(CURDIR):/app prasoon2211/python_ds jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.iopub_data_rate_limit=1000000000000
