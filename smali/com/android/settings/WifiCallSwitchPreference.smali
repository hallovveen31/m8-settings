.class public Lcom/android/settings/WifiCallSwitchPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "WifiCallSwitchPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final IPManagerClassName:Ljava/lang/String; = "com.movial.ipphone.IPManager"

.field private static final IPPhoneSettingsClassName:Ljava/lang/String; = "com.movial.ipphone.IPPhoneSettings"

.field private static final IPStateListener4SettingClassName:Ljava/lang/String; = "com.movial.ipphone.IPStateListener4Setting"

.field private static final IPStateListenerClassName:Ljava/lang/String; = "com.movial.ipphone.IPStateListener"

.field private static final IPUtilesClasssName:Ljava/lang/String; = "com.movial.ipphone.IPUtils"

.field private static final TAG:Ljava/lang/String; = "WifiCallSwitchPreference"

.field private static final WIFICALLSTATECHANGED_INTENT_PERMISSION:Ljava/lang/String; = "com.htc.permission.APP_DEFAULT"

.field private static final WifiCallStateChanged:Ljava/lang/String; = "com.htc.intent.action.WifiCallStateChanged"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPMInstance:Ljava/lang/Object;

.field private mIPMlisten:Ljava/lang/reflect/Method;

.field public mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

.field private mIPStateListener:Ljava/lang/Object;

.field private mIPUtils:Ljava/lang/Class;

.field private mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$1;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$4;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v2, "com.movial.ipphone.IPUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPUtils:Ljava/lang/Class;

    const-string v2, "com.movial.ipphone.IPStateListener4Setting"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPStateListener:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.movial.ipphone.IPStateListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "com.movial.ipphone.IPManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listen"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    const-string v2, "com.movial.ipphone.IPManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v2, 0x7f040075

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    const-string v2, "Wi-Fi Calling"

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get IPManager fail  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/WifiCallSwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPStateListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPUtils:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMInstance:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private registerIPPhoneReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.WifiCallStateChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    const-string v1, "WifiCallSwitchPreference"

    const-string v2, "registerIPPhoneReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerToIPRegistry(Z)V
    .locals 1

    new-instance v0, Lcom/android/settings/WifiCallSwitchPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/WifiCallSwitchPreference$3;-><init>(Lcom/android/settings/WifiCallSwitchPreference;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f09000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight;

    iput-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$2;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    const-string v0, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    const-string v0, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick mToggleButton isChecked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v3, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onSwitchClicked()V
    .locals 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "WifiCallSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSwitchClicked. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v4, :cond_0

    const-string v4, "WifiCallSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSwitchClicked mToggleButton isChecked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v8}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    :try_start_0
    const-string v4, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "CELL_ONLY"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "putBoolean"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v4, 0x2

    iget-boolean v7, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "WifiCallSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putBoolean fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    iget-boolean v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    :cond_0
    const-string v0, "WifiCallSwitchPreference"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "CELL_ONLY"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getBoolean"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    const-string v5, "WifiCallSwitchPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCellOnly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-eqz v5, :cond_1

    const-string v5, "Disabled"

    invoke-virtual {p0, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    if-nez v5, :cond_2

    move v7, v6

    :cond_2
    if-ne v7, v6, :cond_3

    invoke-direct {p0}, Lcom/android/settings/WifiCallSwitchPreference;->registerIPPhoneReceiver()V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string v5, "WifiCallSwitchPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBoolean fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method
