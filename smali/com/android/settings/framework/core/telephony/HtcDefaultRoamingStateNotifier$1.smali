.class Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "HtcDefaultRoamingStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier$1;->this$0:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier$1;->this$0:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    #getter for: Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;
    invoke-static {v0}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->access$000(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;

    move-result-object v0

    #calls: Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;->access$100(Lcom/android/settings/framework/core/telephony/HtcDefaultRoamingStateNotifier;Landroid/telephony/ServiceState;)V

    return-void
.end method
