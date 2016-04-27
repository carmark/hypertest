# hypertest

### Run the test script
#### Hyper

```
perl run.pl hyper result.txt
```
You may set the environment of `hyper_host` if you want to test other hyper server.

#### Docker

```
perl run.pl docker result.txt
```

### Get more image's info

```
perl write_image_module.pl start_rank stop_rank
```

> Notice: if the module is exist, it will not rewrite it.
