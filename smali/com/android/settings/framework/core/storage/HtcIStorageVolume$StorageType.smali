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

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "CHIP_STORAGE"

    const-string v2, "chip"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 103
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "INTERNAL_STORAGE"

    const-string v2, "internal_storage"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 111
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "PHONE_STORAGE"

    const-string v2, "phone_storage"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 119
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "SD_CARD"

    const-string v2, "sd_card"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 124
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "USB_STORAGE"

    const-string v2, "usb"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 129
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "CLOUD_STORAGE"

    const/4 v2, 0x5

    const-string v3, "cloud"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 134
    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 97
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
    .parameter
    .parameter
    .parameter "storageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->mStorageName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public static getStorageTypeFrom(Landroid/content/Intent;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 2
    .parameter "intent"

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    .restart local v0       #extras:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v1

    return-object v1
.end method

.method public static getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 5
    .parameter "bundle"

    .prologue
    .line 211
    if-eqz p0, :cond_0

    .line 212
    const-string v4, "storage_type"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    :goto_0
    if-nez v1, :cond_1

    .line 226
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 265
    .local v3, type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :goto_1
    return-object v3

    .line 214
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_0
    const/4 v1, 0x0

    .local v1, object:Ljava/lang/Object;
    goto :goto_0

    .line 228
    .end local v1           #object:Ljava/lang/Object;
    :cond_1
    instance-of v4, v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-eqz v4, :cond_2

    move-object v3, v1

    .line 231
    check-cast v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 233
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object v0, v1

    .line 234
    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, name:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CHIP_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 239
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_3
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 242
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_4
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 245
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_5
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 246
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 248
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_6
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 249
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->USB_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 251
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_7
    sget-object v4, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 252
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->CLOUD_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 255
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_8
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 258
    .end local v0           #name:Ljava/lang/String;
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_9
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 259
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 260
    .local v2, ordinal:I
    invoke-static {}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->values()[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v4

    aget-object v3, v4, v2

    .line 262
    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto :goto_1

    .line 263
    .end local v2           #ordinal:I
    .end local v3           #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    :cond_a
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .restart local v3       #type:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    goto/16 :goto_1
.end method

.method public static setStorageTypeTo(Landroid/content/Intent;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z
    .locals 2
    .parameter "intent"
    .parameter "storageType"

    .prologue
    .line 190
    if-eqz p0, :cond_1

    .line 191
    if-nez p1, :cond_0

    .line 192
    sget-object p1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 194
    :cond_0
    const-string v0, "storage_type"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStorageTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z
    .locals 2
    .parameter "bundle"
    .parameter "storageType"

    .prologue
    .line 170
    if-eqz p0, :cond_1

    .line 171
    if-nez p1, :cond_0

    .line 172
    sget-object p1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->UNKNOWN:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 174
    :cond_0
    const-string v0, "storage_type"

    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    const-class v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    return-object v0
.end method


# virtual methods
.method public getStorageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->mStorageName:Ljava/lang/String;

    return-object v0
.end method
