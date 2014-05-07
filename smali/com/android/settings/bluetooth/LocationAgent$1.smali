.class Lcom/android/settings/bluetooth/LocationAgent$1;
.super Landroid/os/AsyncTask;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/LocationAgent;->startTracking(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationAgent;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocationAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent$1;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Landroid/bluetooth/BluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocationAgent$1;->doInBackground([Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Void;
    .locals 4
    .parameter "args"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$1;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    #getter for: Lcom/android/settings/bluetooth/LocationAgent;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/bluetooth/LocationAgent;->access$300(Lcom/android/settings/bluetooth/LocationAgent;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    .line 151
    .local v1, mm:Lcom/htc/util/mail/MailManager;
    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 152
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$1;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v0, v3}, Lcom/android/settings/bluetooth/LocationAgent;->access$900(Lcom/android/settings/bluetooth/LocationAgent;Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
