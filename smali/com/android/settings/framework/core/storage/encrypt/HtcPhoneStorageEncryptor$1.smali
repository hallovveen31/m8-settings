.class Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;
.super Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;
.source "HtcPhoneStorageEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;

.field final synthetic val$mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;Lcom/android/settings/framework/core/storage/HtcIStorageVolume;Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;->this$0:Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor;

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;->val$mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/storage/encrypt/HtcInternalStorageEncryptor;-><init>(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V

    return-void
.end method


# virtual methods
.method protected getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;->val$mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->getFunctionEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v0

    return-object v0
.end method

.method protected getUiEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;->val$mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->getUiEnabledProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v0

    return-object v0
.end method

.method protected getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/content/custom/property/HtcIProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/framework/core/storage/encrypt/HtcPhoneStorageEncryptor$1;->val$mThis:Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcStorageEncryptor;->getUiVisibleProperty()Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    move-result-object v0

    return-object v0
.end method
