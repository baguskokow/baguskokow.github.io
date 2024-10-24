# Script Automation To Generating Articles

## How to use
1. Configure config at content.txt file

From this
```
title="" 
dateOfWriting="" 
description="" 
mainDirectoryName="" 
imageDirectoryName="" 
urlToBeCreated=""
fileName=""
thumbnailFormat="" 
firstParagraph="" 
firstImage=""
secondParagraph=""
firstNote=""
thirdParagraph=""
secondImage=""
fourthParagraph=""
firstCode=""
firstHeadingContent=""
fifthParagraph=""
secondHeadingContent=""
firstReference=""
secondReference=""
thirdReference=""
```

To this (example)

```
title="Menggunakan PKI System Untuk Autentikasi di LXD"
dateOfWriting="22 Oktober 2024" #Indonesia Version
description="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
mainDirectoryName="../menggunakan-pki-system-untuk-autentikasi-di-lxd"
imageDirectoryName="15_menggunakan_pki_system_untuk_autentikasi_di_lxd"
urlToBeCreated="https://baguskokow.github.io/$mainDirectoryName"
fileName="index.html"
thumbnailFormat=".jpg" # example : .jpg, .png, .jpeg
firstParagraph="Lorem ipsum odor amet, consectetuer adipiscing elit. Eleifend ultricies diam sed neque leo velit massa turpis. Viverra maecenas magna ante eu euismod vivamus aptent dis metus. Hendrerit porttitor facilisis, ac fusce orci auctor. Condimentum mi dapibus potenti eget potenti; vehicula maecenas."
firstImage="image-1.png"
secondParagraph="Lorem ipsum odor amet, consectetuer adipiscing elit. Auctor porttitor ridiculus lorem facilisis dignissim ut. Faucibus litora iaculis vehicula quis interdum. Lectus fermentum himenaeos magnis et ipsum curabitur."
firstNote="Untuk install Windows bisa cari di Youtube ya..."
thirdParagraph="Lorem ipsum odor amet, consectetuer adipiscing elit. Eros integer viverra elementum in tincidunt. Magna metus ut finibus ut potenti efficitur euismod. Anec adipiscing mus tortor tortor ligula eleifend. Odio venenatis pharetra vel a auctor condimentum lectus nisl. Viverra senectus viverra porta erat facilisis mauris mollis imperdiet. Gravida quam litora magnis turpis ultricies ut turpis curabitur."
secondImage="image-2.png"
fourthParagraph="Lorem ipsum odor amet, consectetuer adipiscing elit. Viverra consectetur ultrices potenti euismod et semper conubia ultrices. Lectus tortor rhoncus ultricies eleifend ante parturient ut. Per massa pharetra nisi, torquent suspendisse suscipit."
firstCode="$ ceph osd lspools\n1 device_health_metrics\n2 libvirt-pool"
firstHeadingContent="Kesimpulan"
fifthParagraph="Lorem ipsum odor amet, consectetuer adipiscing elit. Tristique tincidunt vel habitant nullam odio; platea tincidunt augue? Lobortis volutpat eget phasellus inceptos congue lectus sit."
secondHeadingContent="Referensi"
firstReference="- baguskokow.github.io. (27 Maret 2024). Menjadikan OS Linux Sebagai Hypervisor Type 1. Diakses pada 3 April 2024, dari https://baguskokow.github.io/menjadikan-os-linux-sebagai-hypervisor-type1/"
secondReference="- sumit-ghosh.com. (8 September 2020). Virtualization and Hypervisors :: Explaining QEMU, KVM, and Libvirt. Diakses pada 3 April 2024, dari https://sumit-ghosh.com/posts/virtualization-hypervisors-explaining-qemu-kvm-libvirt/"
thirdReference="- docs.ceph.com. (-). Using libvirt with Ceph RBD. Diakses pada 15 Maret 2024, dari https://docs.ceph.com/en/nautilus/rbd/libvirt/"
```

2. Modifying function that called in main function

![image](https://github.com/user-attachments/assets/23b2b6c7-61b1-4918-9a75-2b73b74226bb)

> Note :
> Customize with variable in content.txt file

4. Running the script
```
$ bash generate-article.sh
```

5. Result test
   
![image](https://github.com/user-attachments/assets/a7cc8244-bdb7-4b27-89ac-73938ef12775)
![image](https://github.com/user-attachments/assets/f124ae81-6c17-4ca3-b611-aca6032c286e)



