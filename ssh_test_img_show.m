user_name = 'pi';
host_name = '192.168.1.20';
password = 'q';
local_file_path = 'F:\sshfrommatlab_13b\';
remote_file_path = cell(10, 1);
for i=10:20
   remote_file_path{i} = strcat('/home/pi/image', num2str(i));
   remote_file_path{i} = strcat(remote_file_path{i},'.jpg')
end
for a=10:20
    scptomatlab(user_name, host_name, password, local_file_path, remote_file_path{a});
end