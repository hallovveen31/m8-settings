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

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/reminderview/activity/ReminderActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcTagLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->requestUnlockAndFinish(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->backToLockScreen()V

    return-void
.end method

.method private backToLockScreen()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    const-string v1, "backToLockScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    .line 190
    return-void
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopReminderViewTracking()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finish()V

    .line 156
    return-void
.end method

.method private parseEvent(I)V
    .locals 11
    .parameter "newEvent"

    .prologue
    const v10, 0x7f0c0aba

    .line 125
    iput p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    .line 127
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3e9

    if-ne v8, v9, :cond_1

    .line 129
    const-string v8, "HtcTagLockScreen"

    const-string v9, "FINDTAG? Impossible tag event to lock screen!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_2

    .line 131
    const v8, 0x7f0c0aad

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, line1:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, line3:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {v8, v2, v4}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2           #line1:Ljava/lang/String;
    .end local v4           #line3:Ljava/lang/String;
    :cond_2
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3ec

    if-ne v8, v9, :cond_5

    .line 135
    const v8, 0x7f0c0aaf

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .restart local v2       #line1:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0c0ab0

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v7, stringBuilder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/HtcTagManager;->getOutOfRangeTagsCopy()Ljava/util/List;

    move-result-object v5

    .line 138
    .local v5, outOfRangeTags:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 139
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 140
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 141
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v8, v6, -0x1

    if-ge v1, v8, :cond_3

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, line2:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .restart local v4       #line3:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {v8, v2, v3, v4}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v1           #i:I
    .end local v2           #line1:Ljava/lang/String;
    .end local v3           #line2:Ljava/lang/String;
    .end local v4           #line3:Ljava/lang/String;
    .end local v5           #outOfRangeTags:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #size:I
    .end local v7           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_5
    iget v8, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v9, 0x3eb

    if-ne v8, v9, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    goto :goto_0
.end method

.method private requestUnlockAndFinish(Z)V
    .locals 5
    .parameter "launchSettings"

    .prologue
    const/high16 v4, 0x1000

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.DeviceProfilesActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    invoke-virtual {v2, p0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;->requestUnlockAndFinish(Landroid/app/Activity;Landroid/app/PendingIntent;)V

    .line 183
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/reminderview/activity/ReminderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 46
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 47
    const-string v1, "HtcTagLockScreen"

    const-string v2, "Error: BluetoothAdapter not supported by system"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finish()V

    .line 94
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    .line 52
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    .line 53
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/bluetooth/HtcTagManager;->hasLsNotification:Z

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 56
    new-instance v1, Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcTagReminderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "event_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->parseEvent(I)V

    .line 58
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->setReminderView(Lcom/htc/reminderview/ui/ReminderView;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mReminderView:Lcom/android/settings/bluetooth/HtcTagReminderView;

    new-instance v2, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen$1;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/HtcTagReminderView;->setCallback(Lcom/android/settings/bluetooth/HtcTagReminderView$Callback;)V

    .line 78
    new-instance v1, Lcom/android/settings/bluetooth/HtcTagLockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen$2;-><init>(Lcom/android/settings/bluetooth/HtcTagLockScreen;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    .line 91
    new-instance v1, Lcom/htc/reminderview/service/HtcReminderManager;

    invoke-direct {v1, p0}, Lcom/htc/reminderview/service/HtcReminderManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    .line 92
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    invoke-virtual {v1, v2}, Lcom/htc/reminderview/service/HtcReminderManager;->registerCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getIntent()Landroid/content/Intent;

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

    .prologue
    .line 160
    invoke-super {p0}, Lcom/htc/reminderview/activity/ReminderActivity;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/bluetooth/HtcTagManager;->hasLsNotification:Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderManager:Lcom/htc/reminderview/service/HtcReminderManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcReminderClient:Lcom/htc/reminderview/service/HtcReminderClient;

    invoke-virtual {v0, v1}, Lcom/htc/reminderview/service/HtcReminderManager;->unregisterCallback(Lcom/htc/reminderview/service/HtcReminderClient;)V

    .line 163
    iget v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mEventId:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcTagManager;->dismissAll()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    .line 168
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 98
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

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/reminderview/activity/ReminderActivity;->onWindowFocusChanged(Z)V

    .line 100
    if-nez p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->finishActivity()V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mLockScreenAgent:Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->registerCallback(Lcom/android/settings/bluetooth/HtcTagLockScreenAgent$Callback;)V

    goto :goto_0
.end method

.method public updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "device"
    .parameter "newEvent"

    .prologue
    .line 110
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

    .line 111
    :cond_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 112
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x0

    .line 113
    .local v1, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    const v2, 0x3000000a

    const-string v3, "Bletag_LightScreenOn_1"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 117
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcTagLockScreen;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/HtcTagLockScreen;->parseEvent(I)V

    .line 121
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 122
    :cond_2
    return-void
.end method
