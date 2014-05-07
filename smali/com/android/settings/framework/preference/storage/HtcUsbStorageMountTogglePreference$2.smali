.class Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;
.super Ljava/lang/Object;
.source "HtcUsbStorageMountTogglePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->doUnmountOperation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

.field final synthetic val$force:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;Landroid/os/storage/IMountService;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$service:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$service:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$path:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->val$force:Z

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference$2;->this$0:Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;

    const/4 v2, 0x2

    #calls: Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;->access$200(Lcom/android/settings/framework/preference/storage/HtcUsbStorageMountTogglePreference;I)V

    goto :goto_0
.end method
