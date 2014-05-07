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
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 122
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    .line 101
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    .line 105
    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$1;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    .line 313
    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$4;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$4;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    .line 131
    :try_start_0
    const-string v2, "com.movial.ipphone.IPUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPUtils:Ljava/lang/Class;

    .line 132
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

    .line 136
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Class;

    .line 137
    .local v1, param:[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 138
    const/4 v2, 0x1

    const-string v3, "com.movial.ipphone.IPStateListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 141
    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 142
    const-string v2, "com.movial.ipphone.IPManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "listen"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    .line 144
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

    .line 150
    .end local v1           #param:[Ljava/lang/Class;
    :goto_0
    const v2, 0x7f040075

    invoke-virtual {p0, v2}, Lcom/android/settings/WifiCallSwitchPreference;->setLayoutResource(I)V

    .line 155
    const-string v2, "Wi-Fi Calling"

    invoke-virtual {p0, v2}, Lcom/android/settings/WifiCallSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get IPManager fail  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/WifiCallSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPStateListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPUtils:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMInstance:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/WifiCallSwitchPreference;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPMlisten:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private registerIPPhoneReceiver()V
    .locals 5

    .prologue
    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.WifiCallStateChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    .line 338
    const-string v1, "WifiCallSwitchPreference"

    const-string v2, "registerIPPhoneReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .parameter "register"

    .prologue
    .line 278
    new-instance v0, Lcom/android/settings/WifiCallSwitchPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/WifiCallSwitchPreference$3;-><init>(Lcom/android/settings/WifiCallSwitchPreference;Z)V

    .line 309
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 310
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 163
    const v1, 0x7f09000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lcom/htc/widget/HtcToggleButtonLight;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    .line 166
    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallSwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v2, Lcom/android/settings/WifiCallSwitchPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/WifiCallSwitchPreference$2;-><init>(Lcom/android/settings/WifiCallSwitchPreference;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 184
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 189
    const-string v0, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/WifiCallSwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_0

    .line 191
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

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/WifiCallSwitchPreference;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v3, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 196
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 193
    goto :goto_0

    :cond_3
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method public onSwitchClicked()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 199
    const-string v4, "WifiCallSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSwitchClicked. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/WifiCallSwitchPreference;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, v6}, Lcom/android/settings/WifiCallSwitchPreference;->setEnabled(Z)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v4, :cond_0

    .line 202
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

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WifiCallSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    .line 208
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

    .line 210
    .local v0, CELL_ONLY:Ljava/lang/Object;
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

    .line 213
    .local v3, putBoolean:Ljava/lang/reflect/Method;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    .line 214
    .local v2, param:[Ljava/lang/Object;
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v2, v4

    .line 215
    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 216
    const/4 v4, 0x2

    iget-boolean v7, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v4

    .line 217
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0           #CELL_ONLY:Ljava/lang/Object;
    .end local v2           #param:[Ljava/lang/Object;
    .end local v3           #putBoolean:Ljava/lang/reflect/Method;
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v4, :cond_2

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 223
    return-void

    :cond_1
    move v4, v6

    .line 204
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WifiCallSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putBoolean fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    move v5, v6

    .line 222
    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, v2}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 269
    iget-boolean v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WifiCallSwitchPreference;->mIPPhonefReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iput-boolean v2, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    .line 273
    :cond_0
    const-string v0, "WifiCallSwitchPreference"

    const-string v1, "unregisterReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public resume()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    const/4 v3, 0x0

    .line 230
    .local v3, oCellOnly:Ljava/lang/Object;
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

    .line 232
    .local v0, CELL_ONLY:Ljava/lang/Object;
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

    .line 235
    .local v2, getBoolean:Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    .line 236
    .local v4, param:[Ljava/lang/Object;
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v4, v5

    .line 237
    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 238
    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v5

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 243
    .end local v0           #CELL_ONLY:Ljava/lang/Object;
    .end local v2           #getBoolean:Ljava/lang/reflect/Method;
    .end local v3           #oCellOnly:Ljava/lang/Object;
    .end local v4           #param:[Ljava/lang/Object;
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    .line 250
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

    .line 252
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->setChecked(Z)V

    .line 253
    iget-object v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-eqz v5, :cond_0

    .line 254
    iget-object v8, p0, Lcom/android/settings/WifiCallSwitchPreference;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 255
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-eqz v5, :cond_1

    .line 256
    const-string v5, "Disabled"

    invoke-virtual {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/settings/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 260
    iget-boolean v5, p0, Lcom/android/settings/WifiCallSwitchPreference;->registered:Z

    if-nez v5, :cond_2

    move v7, v6

    :cond_2
    if-ne v7, v6, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/android/settings/WifiCallSwitchPreference;->registerIPPhoneReceiver()V

    .line 263
    :cond_3
    return-void

    .line 240
    .restart local v3       #oCellOnly:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WifiCallSwitchPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBoolean fail. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #oCellOnly:Ljava/lang/Object;
    :cond_4
    move v5, v7

    .line 252
    goto :goto_1

    :cond_5
    move v5, v7

    .line 254
    goto :goto_2

    :cond_6
    move v5, v7

    .line 257
    goto :goto_3
.end method
