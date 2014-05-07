.class public Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;
.super Ljava/lang/Object;
.source "HtcIStorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mIsMountable:Z

.field private final mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'type\' should not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput p2, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mIndex:I

    iput-boolean p3, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mIsMountable:Z

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mIndex:I

    return v0
.end method

.method public getStorageType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method public isMountable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$Metadata;->mIsMountable:Z

    return v0
.end method
