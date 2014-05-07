.class public final Lcom/android/settings/bluetooth/HtcTagDialog;
.super Landroid/app/Activity;
.source "HtcTagDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcTagDialog"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEventId:I

.field private mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const v9, 0x20402bc

    const/4 v11, 0x0

    .line 90
    const-string v7, "lock_screen_on"

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 91
    .local v3, lsNotify:Z
    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v7, "event_id"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    .line 97
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 100
    :cond_2
    iget v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    const/16 v8, 0x3e9

    if-ne v7, v8, :cond_3

    .line 101
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 102
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0aac

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/bluetooth/HtcTagDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x204027a

    invoke-virtual {v7, v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0a7f

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 108
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 110
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v8, 0x102000d

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 112
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    iget v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    const/16 v8, 0x3ea

    if-ne v7, v8, :cond_4

    .line 113
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0aad

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0c0aae

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 119
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 122
    :cond_4
    iget v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    const/16 v8, 0x3ec

    if-ne v7, v8, :cond_7

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7f0c0ab0

    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/HtcTagDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v6, stringBuilder:Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/HtcTagManager;->getOutOfRangeTagsCopy()Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, outOfRangeTags:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 127
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_6

    .line 128
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 129
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_6
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0aaf

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 139
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 140
    iget-object v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 142
    .end local v2           #i:I
    .end local v4           #outOfRangeTags:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5           #size:I
    .end local v6           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_7
    iget v7, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    const/16 v8, 0x3eb

    if-ne v7, v8, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTagDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    .line 155
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTagDialog"

    const-string v1, "onClick!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 43
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 44
    const-string v2, "HtcTagDialog"

    const-string v3, "Error: BluetoothAdapter not supported by system"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p0, v5}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    .line 51
    .local v1, themeId:I
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagDialog;->setTheme(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0f0088

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 55
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    .line 56
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iput-boolean v5, v2, Lcom/android/settings/bluetooth/HtcTagManager;->mEventsChanged:Z

    .line 57
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcTagDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/HtcTagDialog;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 164
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEventsChanged:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagDialog;->parseIntent(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEventsChanged:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagDialog;->finish()V

    .line 66
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-boolean v0, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEventsChanged:Z

    if-nez v0, :cond_0

    .line 74
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcTagDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop all event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mEventId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->findTag(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iput v3, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->dismissAll()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagDialog;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iput v3, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
