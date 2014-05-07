.class Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;
.super Ljava/lang/Object;
.source "HtcDropboxGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderManager"
.end annotation


# instance fields
.field final DROPBOX_GROUP_ORDER:I

.field final GOOGLE_DRIVE_GROUP_ORDER:I

.field final GROUP_ORDER_OFFSET:I

.field final MISC_GROUP_ORDER:I

.field dropboxOrder:I

.field googleDriveOrder:I

.field miscOrder:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x400

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->GROUP_ORDER_OFFSET:I

    .line 33
    iput v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->DROPBOX_GROUP_ORDER:I

    .line 34
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->GOOGLE_DRIVE_GROUP_ORDER:I

    .line 36
    const/16 v0, 0x2400

    iput v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->MISC_GROUP_ORDER:I

    .line 39
    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->dropboxOrder:I

    .line 40
    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->googleDriveOrder:I

    .line 41
    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->miscOrder:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;-><init>()V

    return-void
.end method


# virtual methods
.method getOrder(Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;)I
    .locals 2
    .parameter "account"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->DROPBOX:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    if-ne v0, v1, :cond_0

    .line 45
    iget v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->dropboxOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->dropboxOrder:I

    add-int/lit16 v0, v0, 0x400

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/CloudStorageAccount;->getCloud()Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    move-result-object v0

    sget-object v1, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;->GOOGLEDRIVE:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/model/property/CloudStorageConst$ServicePluginName;

    if-ne v0, v1, :cond_1

    .line 48
    iget v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->googleDriveOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->googleDriveOrder:I

    add-int/lit16 v0, v0, 0x800

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->miscOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxGroup$OrderManager;->miscOrder:I

    add-int/lit16 v0, v0, 0x2400

    goto :goto_0
.end method
