%��kitti������ǰ����ICP
function ICP_kitti
    fileNum = 15;
    for i = 5:fileNum-1
        address1 = ['E:\Code\ICRA_dir\inputData_fromLidar\dataFromKitti\3\cloud_cluster_3_',num2str(i),'.txt.mat'];
        address2 = ['E:\Code\ICRA_dir\inputData_fromLidar\dataFromKitti\3\cloud_cluster_3_',num2str(i+1),'.txt.mat'];
        a(i).data = load(address1);
        a(i+1).data = load(address2);
         dst = a(i).data.data_out(4:end, 1:3);
         src = a(i+1).data.data_out(4:end, 1:3);
         dst = dst'; src = src';
%         [R T] = icp(dst, src, 10); %����10��
%         display(R);
%         display(T);
%         src_aligned = R*src + repmat(T,1,length(src));
    %plot��R,T��Ч��
    
    figure;
    hold on;
%     plot3(src(1,:), src(2,:), src(3,:), '.r');
     plot3(dst(1,:), dst(2,:), dst(3,:), '.g');
%     plot3(src_aligned(1,:), src_aligned(2,:), src_aligned(3,:), '.b');
    title(['kitti������3�ĵ�',num2str(i),'֡���', num2str(i+1),'֡ICP�Ľ��']);
    xlabel('x');ylabel('y');zlabel('z');
    hold off;   
%% д��txt�ļ�  
%     fileAddress = 'E:\Code\ICRA_dir\outputData\ICP_of_kitti_TXT\';
%         filename = 'kitti_series_3.txt';
%             file_in = fopen([fileAddress, filename], 'at');
%     %д��R
%     for r = 1:3
%         for c = 1:3
%             if c == 3
%                 fprintf(file_in, '%6.4f\n', R(r, c)); %��һ��Ҫ����һ�п�ʼд
%             else
%                  fprintf(file_in, '%6.4f\0', R(r, c));
%             end
%         end
%     end
%     %д��t
%     fprintf(file_in, '%6.4f %6.4f %6.4f\n', T );
%     fclose(file_in);
% 
%     end    
    
end

