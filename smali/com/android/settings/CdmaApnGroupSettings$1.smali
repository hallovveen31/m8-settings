.class Lcom/android/settings/CdmaApnGroupSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaApnGroupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CdmaApnGroupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnGroupSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings$1;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    #calls: Lcom/android/settings/CdmaApnGroupSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/settings/CdmaApnGroupSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 143
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v1, Lcom/android/settings/CdmaApnGroupSettings$4;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 153
    .end local v0           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local v0       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings/CdmaApnGroupSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings$1;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    #calls: Lcom/android/settings/CdmaApnGroupSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/CdmaApnGroupSettings;->access$200(Lcom/android/settings/CdmaApnGroupSettings;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CdmaApnGroupSettings$1;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/settings/CdmaApnGroupSettings;->showDialog(I)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method