.class Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcLocationAGPSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->syncStateFromDataSourceInBackground()V

    .line 98
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispatchGetValueMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 105
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-void
.end method
