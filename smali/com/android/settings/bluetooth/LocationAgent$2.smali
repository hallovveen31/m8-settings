.class Lcom/android/settings/bluetooth/LocationAgent$2;
.super Landroid/os/AsyncTask;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocationAgent;

.field final synthetic val$account:Lcom/htc/util/mail/MailAccount;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocationAgent;Lcom/htc/util/mail/MailAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/LocationAgent$2;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    iput-object p2, p0, Lcom/android/settings/bluetooth/LocationAgent$2;->val$account:Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocationAgent$2;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocationAgent$2;->this$0:Lcom/android/settings/bluetooth/LocationAgent;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocationAgent$2;->val$account:Lcom/htc/util/mail/MailAccount;

    #calls: Lcom/android/settings/bluetooth/LocationAgent;->sendmail(Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v3, v0}, Lcom/android/settings/bluetooth/LocationAgent;->access$900(Lcom/android/settings/bluetooth/LocationAgent;Lcom/htc/util/mail/MailAccount;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
