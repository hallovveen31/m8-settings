.class Lcom/android/settings/WifiCallSwitchPreference$1;
.super Landroid/os/Handler;
.source "WifiCallSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WifiCallSwitchPreference$1;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference$1;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    const-string v1, "Disabled"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference$1;->this$0:Lcom/android/settings/WifiCallSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
