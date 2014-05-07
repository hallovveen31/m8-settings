.class Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;
.super Landroid/database/ContentObserver;
.source "HtcDoNotDisturbSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;
    invoke-static {v0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->access$000(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;)Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference$1;->this$0:Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;
    invoke-static {v0}, Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;->access$100(Lcom/android/settings/framework/preference/sound/HtcDoNotDisturbSwitchPreference;)Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 58
    :cond_0
    return-void
.end method
