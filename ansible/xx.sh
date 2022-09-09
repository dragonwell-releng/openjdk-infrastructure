for i in `seq 1 1000`
do
  echo "run ${i} ----------------"
  ansible-playbook --user=root -vvv   -i /etc/ansible/hosts  --skip-tags adoptopenjdk,jenkins playbooks/AdoptOpenJDK_Unix_Playbook/main.yml
  if [ "$?" -eq 0 ];then
    break
  fi
  sleep 5
done
echo "done!!!"
