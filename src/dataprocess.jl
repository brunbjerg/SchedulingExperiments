# download data files into data folder
function download_file()


    flow_shop_urls = [
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai20_5.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai20_10.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai20_20.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai50_5.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai50_10.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai50_20.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai100_5.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai100_10.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai100_20.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai200_10.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai200_10.txt"
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/flowshop.dir/tai500_20.txt"
    ]

    job_shop_urls = [
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai15_15.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai20_15.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai20_20.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai30_15.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai30_20.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai50_15.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai50_20.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/jobshop.dir/tai100_20.txt",
    ]

    open_shop_urls = [
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai4_4.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai5_5.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai7_7.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai10_10.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai15_15.txt",
        "http://mistic.heig-vd.ch/taillard/problemes.dir/ordonnancement.dir/openshop.dir/tai20_20.txt",
    ]


    for url in flow_shop_urls
        file_name = split(url, "/")[end]
        download(url, "flow_shop_" * file_name)
    end

    for url in job_shop_urls
        println(url)
        file_name = split(url, "/")[end]
        download(url, "job_shop_" * file_name)
    end

    for url in open_shop_urls
        file_name = split(url, "/")[end]
        download(url, "open_shop_" * file_name)
    end

end

cd(@__DIR__)
cd("../data/")

download_file()