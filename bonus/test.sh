    echo  "\033[0;32m For argocd: \033[0m"

    echo "visit the link: https://$IP:80"
    echo "user: admin"
    OK=$(sudo kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}")
    echo "password: $OK\n" 
    echo  "\033[0;32m For gitlab: \033[0m"
    echo "visit the link: http://$IP:8888"
    echo "user: root"
    echo "password: dontbelikethat"