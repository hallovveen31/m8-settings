.class Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "HtcAssistedGPSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->syncStateFromDataSourceInBackground()V

    .line 110
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 117
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "com.htc.settings.action.SET_AGPS_ENABLED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    return-void
.end method
