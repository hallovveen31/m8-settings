.class Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcBluetoothTetheringSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "content"
    .parameter "intent"

    .prologue
    const/high16 v10, -0x8000

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    const-string v8, "availableArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 392
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "activeArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 393
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "erroredArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 394
    .local v5, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v11, v8, v9, v10}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$100(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 423
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 398
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #setter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mMassStorageActive:Z
    invoke-static {v8, v3}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$202(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z

    .line 399
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V
    invoke-static {v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    goto :goto_0

    .line 400
    :cond_2
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 401
    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #setter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mMassStorageActive:Z
    invoke-static {v9, v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$202(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z

    .line 402
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V
    invoke-static {v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    goto :goto_0

    .line 403
    :cond_3
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 404
    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    const-string v10, "connected"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    #setter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mUsbConnected:Z
    invoke-static {v9, v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$402(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z

    .line 405
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V
    invoke-static {v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    goto :goto_0

    .line 406
    :cond_4
    const-string v9, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 407
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V
    invoke-static {v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    goto :goto_0

    .line 408
    :cond_5
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 409
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 410
    .local v6, state:I
    const/16 v9, 0xa

    if-eq v6, v9, :cond_6

    if-ne v6, v10, :cond_7

    .line 411
    :cond_6
    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #setter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mRestoreToDisableBt:Z
    invoke-static {v9, v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$502(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;Z)Z

    .line 413
    :cond_7
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateState()V
    invoke-static {v8}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$300(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)V

    goto :goto_0

    .line 414
    .end local v6           #state:I
    :cond_8
    const-string v9, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 415
    const-string v9, "com.htc.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 416
    .local v7, status:I
    if-nez v7, :cond_9

    .line 417
    .local v3, disableBT:Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsTetherDisable:Z
    invoke-static {v9}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$600(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Z

    move-result v9

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateEasPolicy(ZZ)V
    invoke-static {v8, v3, v9}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;ZZ)V

    goto/16 :goto_0

    .end local v3           #disableBT:Z
    :cond_9
    move v3, v8

    .line 416
    goto :goto_1

    .line 418
    .end local v7           #status:I
    :cond_a
    const-string v9, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 419
    const-string v9, "com.htc.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 420
    .restart local v7       #status:I
    if-nez v7, :cond_b

    move v4, v3

    .line 421
    .local v4, disableTether:Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    iget-object v9, p0, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference$2;->this$0:Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;

    #getter for: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->mIsBtDisable:Z
    invoke-static {v9}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$800(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;)Z

    move-result v9

    #calls: Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->UpdateEasPolicy(ZZ)V
    invoke-static {v8, v9, v4}, Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;->access$700(Lcom/android/settings/framework/preference/wireless/HtcBluetoothTetheringSwitchPreference;ZZ)V

    goto/16 :goto_0

    .end local v4           #disableTether:Z
    :cond_b
    move v4, v8

    .line 420
    goto :goto_2
.end method
