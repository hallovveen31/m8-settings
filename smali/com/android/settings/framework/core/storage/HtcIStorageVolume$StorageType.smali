.class public final enum Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
.super Ljava/lang/Enum;
.source "HtcIStorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType; = null

.field public static final enum CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType; = null

.field public static final enum CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType; = null

.field public static final enum INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType; = null

.field public static final KEY_STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field public static final enum PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field public static final enum SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field public static final enum USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;


# instance fields
.field private mStorageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "CHIP_STORAGE"

    const-string v2, "chip"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "INTERNAL_STORAGE"

    const-string v2, "internal_storage"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "PHONE_STORAGE"

    const-string v2, "phone_storage"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "SD_CARD"

    const-string v2, "sd_card"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "USB_STORAGE"

    const-string v2, "usb"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "CLOUD_STORAGE"

    const/4 v2, 0x5

    const-string v3, "cloud"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->mStorageName:Ljava/lang/String;

    return-void
.end method

.method public static getStorageTypeFrom(Landroid/content/Intent;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    return-object v1
.end method

.method public static getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 5

    if-eqz p0, :cond_0

    const-string v4, "storage_type"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    :goto_1
    return-object v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    instance-of v4, v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto :goto_1

    :cond_9
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->values()[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v4

    aget-object v3, v4, v2

    goto :goto_1

    :cond_a
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    goto/16 :goto_1
.end method

.method public static setStorageTypeTo(Landroid/content/Intent;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    :cond_0
    const-string v0, "storage_type"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStorageTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    :cond_0
    const-string v0, "storage_type"

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method


# virtual methods
.method public getStorageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->mStorageName:Ljava/lang/String;

    return-object v0
.end method
