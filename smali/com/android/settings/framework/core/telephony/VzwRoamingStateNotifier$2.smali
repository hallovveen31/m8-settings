.class Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;
.super Landroid/telephony/PhoneStateListener;
.source "VzwRoamingStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onCreatePhoneStateListener()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;->this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier$2;->this$0:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    #getter for: Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->mThis:Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;
    invoke-static {v0}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->access$000(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;)Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;

    move-result-object v0

    #calls: Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;->access$200(Lcom/android/settings/framework/core/telephony/VzwRoamingStateNotifier;Landroid/telephony/ServiceState;)V

    .line 228
    return-void
.end method
