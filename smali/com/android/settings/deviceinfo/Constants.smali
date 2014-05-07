.class Lcom/android/settings/deviceinfo/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Constants$MediaDirectory;
    }
.end annotation


# static fields
.field static final DOWNLOADS_INDEX:I = 0x1

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field static final ExclusionTargetsForMiscFiles:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final MEDIA_APPS_DATA_INDEX:I = 0x4

.field static final MEDIA_INDEX:I = 0x0

.field static final MEDIA_MISC_INDEX:I = 0x5

.field static final MUSIC_INDEX:I = 0x3

.field static final NUM_MEDIA_DIRS_TRACKED:I = 0x6

.field static final PIC_VIDEO_INDEX:I = 0x2

.field static final mMediaDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/Constants$MediaDirectory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x5

    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/deviceinfo/Constants;->ExclusionTargetsForMiscFiles:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "EXTERNAL_STORAGE"

    const-string v7, "/storage/sdcard0"

    invoke-static {v6, v7}, Lcom/android/settings/deviceinfo/Constants;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/deviceinfo/Constants;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const/4 v6, 0x0

    const-string v7, "/sdcard"

    new-array v8, v12, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const-string v6, "memory_internal_downloads"

    const-string v7, "/sdcard/download"

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const-string v6, "memory_internal_dcim"

    const-string v7, "/sdcard/pic_video"

    new-array v8, v13, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    sget-object v9, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const-string v6, "memory_internal_music"

    const-string v7, "/sdcard/audio"

    new-array v8, v14, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    sget-object v9, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    sget-object v9, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    const/4 v9, 0x4

    sget-object v10, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    const/4 v5, 0x4

    new-instance v6, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const/4 v7, 0x0

    const-string v8, "/sdcard/Android"

    new-array v9, v12, [Ljava/lang/String;

    sget-object v10, Lcom/android/settings/deviceinfo/Constants;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-direct {v6, v7, v8, v9}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    const-string v6, "memory_internal_media_misc"

    const-string v7, "misc on /sdcard"

    new-array v8, v12, [Ljava/lang/String;

    const-string v9, "not relevant"

    aput-object v9, v8, v11

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v14, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v14, :cond_1

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->mMediaDirs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;

    iget-object v0, v4, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mDirPaths:[Ljava/lang/String;

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->ExclusionTargetsForMiscFiles:Ljava/util/List;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/settings/deviceinfo/Constants;->ExclusionTargetsForMiscFiles:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/Android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
