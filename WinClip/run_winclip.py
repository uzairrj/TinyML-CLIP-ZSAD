import os
from datasets.dataset import generate_class_info

if __name__ == '__main__':

    datasets = {
        'mvtec':"",
    }
    
    for dataset, path in datasets.items():
        print(f"Processing dataset: {dataset}")
        
        classes, _ = generate_class_info(dataset)

        for cls in classes[:]:

            sh_method = f'python eval_WinCLIP.py ' \
                        f'--dataset {dataset} ' \
                        f'--class-name {cls} ' \
                        f'--data_path {path} '

            print(sh_method)
            
            # Execute the command sequentially
            os.system(sh_method)