.class public interface abstract Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.super Ljava/lang/Object;
.source "HtcIStorageVolume.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;,
        Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;,
        Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;
    }
.end annotation


# static fields
.field public static final MESSAGE_DECRYPT:I = 0x12

.field public static final MESSAGE_ENCRYPT:I = 0x11

.field public static final MESSAGE_FORMAT:I = 0x10

.field public static final MESSAGE_GET_APPS_PARTIAL_SPACE:I = 0x5

.field public static final MESSAGE_GET_APPS_SPACE:I = 0x4

.field public static final MESSAGE_GET_MEDIA_FILES_SPACE:I = 0x6

.field public static final MESSAGE_GET_TOTAL_AVAILABLE_SPACE:I = 0x3

.field public static final MESSAGE_MOUNT:I = 0xe

.field public static final MESSAGE_ON_MEDIA_SCANNER_STATE_CHANGED:I = 0x2

.field public static final MESSAGE_ON_STORAGE_STATE_CHANGED:I = 0x1

.field public static final MESSAGE_REFRESH:I = 0x63

.field public static final MESSAGE_STATFS_READY:I = 0x64

.field public static final MESSAGE_UNMOUNT:I = 0xf


# virtual methods
.method public abstract canEncrypt()Z
.end method

.method public abstract clone()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.end method

.method public abstract decrypt(Ljava/lang/String;)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract decrypt(Ljava/lang/String;Z)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;Z)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract format()Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract format(Z)Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getAppsSpace()V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDependencyPaths()[Ljava/lang/String;
.end method

.method public abstract getEncryptor()Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getMediaFilesSpace()V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathFile()Ljava/io/File;
.end method

.method public abstract getRawTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getStatFs()Lcom/android/settings/framework/core/storage/HtcStatFs;
.end method

.method public abstract getState()Ljava/lang/String;
.end method

.method public abstract getTotalAvailableSpace()Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs;)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getTotalAvailableSpace(Z)Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
.end method

.method public abstract hasDependencyPaths()Z
.end method

.method public abstract isEmulated()Z
.end method

.method public abstract isEncrypted()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isMountable()Z
.end method

.method public abstract isPrimary()Z
.end method

.method public abstract isRemovable()Z
.end method

.method public abstract isSecondary()Z
.end method

.method public abstract isTertiary()Z
.end method

.method public abstract mount()Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract mount(Z)Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract refresh(Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;)V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->ASYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract stopGettingAppsSpace()V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract stopGettingMediaFilesSpace()V
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract unmount()Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->SYNCHRONOUS:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method

.method public abstract unmount(Z)Z
    .annotation build Lcom/android/settings/framework/os/annotation/HtcExecution;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcExecution$Type;->DEPEND_ON_ARGUMENT:Lcom/android/settings/framework/os/annotation/HtcExecution$Type;
    .end annotation
.end method
