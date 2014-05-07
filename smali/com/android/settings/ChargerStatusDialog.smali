.class public Lcom/android/settings/ChargerStatusDialog;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "ChargerStatusDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChargerStatusDialog$WarningDialog;
    }
.end annotation


# static fields
.field public static final BatteryChangePartial_Intent:Ljava/lang/String; = "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

.field public static final ChargetDontCare_Intent:Ljava/lang/String; = "com.htc.charger.dont.care"


# instance fields
.field private ChargerTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final TAG:Ljava/lang/String;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mChargerTypeFilter:Landroid/content/IntentFilter;

.field private mCheckbox:Lcom/htc/widget/HtcCheckBox;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

.field private mDontAsk:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const-string v0, "ChargerStatusDialog"

    iput-object v0, p0, Lcom/android/settings/ChargerStatusDialog;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChargerStatusDialog;->type:I

    new-instance v0, Lcom/android/settings/ChargerStatusDialog$5;

    invoke-direct {v0, p0}, Lcom/android/settings/ChargerStatusDialog$5;-><init>(Lcom/android/settings/ChargerStatusDialog;)V

    iput-object v0, p0, Lcom/android/settings/ChargerStatusDialog;->ChargerTypeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChargerStatusDialog;)Lcom/htc/widget/HtcCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ChargerStatusDialog;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChargerStatusDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ChargerStatusDialog;->type:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChargerStatusDialog;)Lcom/android/settings/ChargerStatusDialog$WarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    return-object v0
.end method

.method private showChargerDialog(I)V
    .locals 11

    const v10, 0x7f0900b6

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    const v5, 0x7f0c0762

    const v3, 0x7f0c0764

    :goto_0
    const v6, 0x7f04005d

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0900b3

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0900b5

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcCheckBox;

    iput-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v8, :cond_0

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mCheckbox:Lcom/htc/widget/HtcCheckBox;

    new-instance v7, Lcom/android/settings/ChargerStatusDialog$1;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/ChargerStatusDialog$1;-><init>(Lcom/android/settings/ChargerStatusDialog;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v6, Lcom/android/settings/ChargerStatusDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/ChargerStatusDialog$2;-><init>(Lcom/android/settings/ChargerStatusDialog;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v6, Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    invoke-direct {v6, p0, p0}, Lcom/android/settings/ChargerStatusDialog$WarningDialog;-><init>(Lcom/android/settings/ChargerStatusDialog;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    const/4 v7, -0x1

    const v8, 0x2040258

    new-instance v9, Lcom/android/settings/ChargerStatusDialog$3;

    invoke-direct {v9, p0}, Lcom/android/settings/ChargerStatusDialog$3;-><init>(Lcom/android/settings/ChargerStatusDialog;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/settings/ChargerStatusDialog$WarningDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    new-instance v7, Lcom/android/settings/ChargerStatusDialog$4;

    invoke-direct {v7, p0}, Lcom/android/settings/ChargerStatusDialog$4;-><init>(Lcom/android/settings/ChargerStatusDialog;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_2
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v6

    if-eqz v6, :cond_3

    const v5, 0x7f0c0768

    const v3, 0x7f0c076a

    goto/16 :goto_0

    :cond_3
    const v5, 0x7f0c0765

    const v3, 0x7f0c076c

    goto/16 :goto_0

    :cond_4
    if-ne p1, v8, :cond_5

    const v5, 0x7f0c076f

    const v3, 0x7f0c0770

    goto/16 :goto_0

    :cond_5
    const-string v6, "ChargerStatusDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Charger status type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "ChargerStatusDialog"

    const-string v2, "-onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/android/settings/ChargerStatusDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mContext:Landroid/content/Context;

    const-string v2, "WirelessSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ChargerStatusDialog"

    const-string v2, "Received intent is null, return !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mChargerTypeFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mChargerTypeFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.BATTERY_CHANGE_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mChargerTypeFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.charger.dont.care"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mChargerTypeFilter:Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->ChargerTypeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/ChargerStatusDialog;->mChargerTypeFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "charger_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChargerStatusDialog;->type:I

    iget v1, p0, Lcom/android/settings/ChargerStatusDialog;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/ChargerStatusDialog;->showChargerDialog(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    const-string v1, "ChargerStatusDialog"

    const-string v2, "-onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChargerStatusDialog;->ChargerTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "ChargerStatusDialog"

    const-string v2, "unregisterReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ChargerStatusDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when unregister receiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    const-string v0, "ChargerStatusDialog"

    const-string v1, "-onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStop()V

    const-string v0, "ChargerStatusDialog"

    const-string v1, "-onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
