.class Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;
.super Lcom/android/settings/framework/receiver/HtcAbsReceiver;
.source "VzwRoamingStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onCreateRegister(Landroid/content/Context;)Lcom/android/settings/framework/content/HtcIRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;->this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$1;->this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    #getter for: Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
    invoke-static {v0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->access$000(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    move-result-object v0

    #calls: Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->access$100(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
