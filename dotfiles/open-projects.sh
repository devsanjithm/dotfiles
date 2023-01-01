#!/bin/bash  
cls
echo "------------------------------"
echo "     Available Projects"
echo "------------------------------"
echo
echo "1. Car Wash Android"
echo "2. Car Wash Web"
echo "3. Invenspace - FE"
echo "4. Invenspace - BE"
echo 
read -p "Enter Option to open Project : " option 
if [ $option -eq "1" ];
then
  name=carwash_android
  cd /mnt/d/Freelancing/"CW Project"/CW_PROJECT
  tmux new-session -s $name -d 
  tmux rename-window -t $name lvim-cwa
  tmux send-keys -t $name 'lvim -c "NvimTreeToggle"' C-m
  tmux new-window -t $name
  tmux rename-window -t $name server-cwa
  tmux send-keys -t server 'yarn start' C-m
  tmux select-window -t $name:0
  # cd
  # ./timer.sh
  # gnome-terminal -- tmux new-session -s timer
  # tmux rename-window -t timer clock
  # tmux send-keys -t timer './twenty-20-20.sh y' C-m
  tmux attach -t $name
elif [ $option -eq "2" ]
then 
  name=carwash_web
  cd /mnt/d/Freelancing/"CW Project"/CW_WEB 
  tmux new-session -s $name -d 
  tmux rename-window -t $name lvim-cww
  tmux send-keys -t $name 'lvim -c "NvimTreeToggle"' C-m
  tmux new-window -t $name
  tmux rename-window -t $name server-cww
  tmux send-keys -t server 'yarn start' C-m
  tmux select-window -t $name:0
  # cd
  # ./timer.sh
  # gnome-terminal -- tmux new-session -s timer
  # tmux rename-window -t timer clock
  # tmux send-keys -t timer './twenty-20-20.sh y' C-m
  tmux attach -t $name
elif [ $option -eq "3" ]
then 
  name=InvenspaceFE
  cd /mnt/d/"Documents (Manjaro)"/reactnative/Invenspace
  tmux new-session -s $name -d
  tmux rename-window -t $name lvim-INSFE
  tmux send-keys -t lvim-INSFE 'lvim -c "NvimTreeToggle"' C-m
  tmux new-window -t $name
  tmux rename-window -t $name server-INSFE
  tmux send-keys -t server-INSFE 'yarn start' C-m
  tmux select-window -t $name:0
  tmux attach -t $name
elif [ $option -eq '4' ]
then
  name=InvenspaceBE
  cd /mnt/e/"Main Project"/Backend
  tmux new-session -s $name -d
  tmux rename-window -t $name lvim-INSBE
  tmux send-keys -t lvim-INSBE 'lvim -c "NvimTreeToggle"' C-m
  tmux new-window -t $name
  tmux rename-window -t $name server-INSBE
  tmux send-keys -t server-INSBE 'yarn .' C-m
  tmux select-window -t $name:0
  tmux attach -t $name
else
  echo "Option Invalid"
  # clear
fi


# for timer 


