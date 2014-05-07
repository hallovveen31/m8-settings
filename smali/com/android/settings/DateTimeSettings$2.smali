.class Lcom/android/settings/DateTimeSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChangedExt(Landroid/telephony/ServiceState;I)V
    .locals 2
    .parameter "state"
    .parameter "phoneType"

    .prologue
    .line 748
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 749
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 750
    .local v0, enableAutoTimeAndDisable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    #calls: Lcom/android/settings/DateTimeSettings;->updateAutoTimeOption(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/DateTimeSettings;->access$100(Lcom/android/settings/DateTimeSettings;Z)V

    .line 752
    .end local v0           #enableAutoTimeAndDisable:Z
    :cond_0
    return-void

    .line 749
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
