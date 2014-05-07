.class public final Lcom/android/settings/bluetooth/HtcTagLockScreen;
.super Lcom/htc/reminderview/activity/ReminderActivity;
.source "HtcTagLockScreen.java"

# interfaces
.implements Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcTagLockScreen"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mEventId:I

.field private mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

.field private mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

.field private mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

.field private mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

.field private mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/reminderview/activity/ReminderActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcTagLockScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->requestUnlockAndFinish(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->backToLockScreen()V

    return-void
.end method

.method private backToLockScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    const-string v1, "backToLockScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopReminderViewTracking()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private parseEvent(I)V
    .locals 11

    const v10, 0x7f0c0aba

    iput p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3e9

    if-ne v8, v9, :cond_1

    const-string v8, "HtcTagLockScreen"

    const-string v9, "FINDTAG? Impossible tag event to lock screen!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_2

    const v8, 0x7f0c0aad

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {v8, v2, v4}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3ec

    if-ne v8, v9, :cond_5

    const v8, 0x7f0c0aaf

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0c0ab0

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/HtcTagManager;->getOutOfRangeTagsCopy()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, -0x1

    if-ge v1, v8, :cond_3

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {v8, v2, v3, v4}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3eb

    if-ne v8, v9, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    goto :goto_0
.end method

.method private requestUnlockAndFinish(Z)V
    .locals 5

    const/high16 v4, 0x1000

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.DeviceProfilesActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    invoke-virtual {v2, p0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;->requestUnlockAndFinish(Landroid/app/Activity;Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/reminderview/activity/ReminderActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "HtcTagLockScreen"

    const-string v2, "Error: BluetoothAdapter not supported by system"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/bluetooth/HtcTagManager;->hasLsNotification:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    new-instance v1, Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcTagReminderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "event_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->parseEvent(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {p0, v1}, Lcom/htc/reminderview/activity/ReminderActivity;->setReminderView(Lcom/htc/reminderview/ui/ReminderView;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    new-instance v2, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setCallback(Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;)V

    new-instance v1, Lcom/android/settings/bluetooth/HtcTagLockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen$2;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    new-instance v1, Lcom/htc/reminderview/service/HtcReminderManager;

    invoke-direct {v1, p0}, Lcom/htc/reminderview/service/HtcReminderManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->registerCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/htc/reminderview/activity/ReminderActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/bluetooth/HtcTagManager;->hasLsNotification:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    invoke-virtual {v0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;->unregisterCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    iget v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->dismissAll()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcTagLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V

    goto :goto_0
.end method

.method public updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    sget-boolean v2, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcTagLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTagLsNotification :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x3000000a

    const-string v3, "Bletag_LightScreenOn_1"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->parseEvent(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method
