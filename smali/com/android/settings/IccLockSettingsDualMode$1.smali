.class Lcom/android/settings/IccLockSettingsDualMode$1;
.super Landroid/telephony/PhoneStateListener;
.source "IccLockSettingsDualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettingsDualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettingsDualMode;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettingsDualMode;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/IccLockSettingsDualMode$1;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode$1;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettingsDualMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode$1;->this$0:Lcom/android/settings/IccLockSettingsDualMode;

    invoke-virtual {v0}, Lcom/android/settings/IccLockSettingsDualMode;->finish()V

    .line 134
    :cond_0
    return-void
.end method
