.class public Lcom/android/settings/SecurityDialog;
.super Landroid/app/Activity;
.source "SecurityDialog.java"


# static fields
.field private static final CATEGORY_HTCLOCKSCREEN:Ljava/lang/String; = "HtcLoccksreen"

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final HIGH_END_DEVICE:I = 0x50

.field private static final KEY_DEVICE_PERFORMANCE_LEVEL:Ljava/lang/String; = "device_performance_level"

.field static final PREFIX_TAG:Ljava/lang/String; = "SecurityDialog"


# instance fields
.field mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field mContext:Landroid/content/Context;

.field private mHtcFontScale:F

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/SecurityDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SecurityDialog;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecurityDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/SecurityDialog;->notifySettingUpdated()V

    return-void
.end method

.method private static final isSupportShowNotificationOnLockscreen()Z
    .locals 8

    .prologue
    const/16 v7, 0x50

    .line 172
    new-instance v1, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;

    invoke-direct {v1}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;-><init>()V

    .line 173
    .local v1, manager:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;
    const/4 v3, 0x0

    .line 174
    .local v3, reader:Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;
    const/16 v2, 0x50

    .line 175
    .local v2, perforemanceLevel:I
    const/4 v0, 0x1

    .line 177
    .local v0, isSupport:Z
    if-eqz v1, :cond_0

    .line 178
    const-string v4, "HtcLoccksreen"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;

    move-result-object v3

    .line 180
    :cond_0
    if-eqz v3, :cond_1

    .line 181
    const-string v4, "device_performance_level"

    invoke-virtual {v3, v4, v7}, Lcom/htc/wrap/com/htc/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    .line 183
    :cond_1
    sget-boolean v4, Lcom/android/settings/SecurityDialog;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 184
    const-string v4, "SecurityDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " performance level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    if-le v2, v7, :cond_3

    .line 187
    const/4 v0, 0x0

    .line 189
    :cond_3
    return v0
.end method

.method private notifySettingUpdated()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.ntfwidget.action.UPDATE_PRODUCTIVITY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecurityDialog;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->dismissDialog()V

    .line 93
    const-string v0, ""

    .line 94
    .local v0, summary:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SecurityDialog;->isSupportShowNotificationOnLockscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01e0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0b0f

    new-instance v3, Lcom/android/settings/SecurityDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/SecurityDialog$3;-><init>(Lcom/android/settings/SecurityDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/SecurityDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SecurityDialog$2;-><init>(Lcom/android/settings/SecurityDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 119
    iget-object v1, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/android/settings/SecurityDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/SecurityDialog$4;-><init>(Lcom/android/settings/SecurityDialog;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 127
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecurityDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 135
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/settings/SecurityDialog;->mHtcFontScale:F

    .line 54
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecurityDialog;->mThemeId:I

    .line 55
    iget v1, p0, Lcom/android/settings/SecurityDialog;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SecurityDialog;->setTheme(I)V

    .line 58
    iput-object p0, p0, Lcom/android/settings/SecurityDialog;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 60
    .local v0, theWindow:Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SecurityDialog;->showDialog()V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->dismissDialog()V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/SecurityDialog;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 70
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/SecurityDialog;->mHtcFontScale:F

    invoke-static {p0, v2}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 72
    .local v0, isFontScaleChanged:Z
    sget-boolean v2, Lcom/android/settings/SecurityDialog;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "SecurityDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFontScaleChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v2, "SecurityDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecurityDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/SecurityDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/SecurityDialog$1;-><init>(Lcom/android/settings/SecurityDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 89
    :cond_3
    return-void
.end method

.method public setNotificationValue(Landroid/content/Context;Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "Table"
    .parameter "Key"
    .parameter "newState"

    .prologue
    .line 145
    move-object v1, p3

    .line 146
    .local v1, key:Ljava/lang/String;
    move-object v3, p2

    .line 147
    .local v3, table:Lcom/android/settings/framework/database/HtcDatabaseTable;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v3, v4, :cond_1

    .line 150
    invoke-static {v0, v1, p4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    .local v2, result:Z
    :goto_0
    sget-boolean v4, Lcom/android/settings/SecurityDialog;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 156
    const-string v5, "SecurityDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setNotificationValue ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "][set]["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_2

    const-string v4, "successful"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void

    .line 152
    .end local v2           #result:Z
    :cond_1
    invoke-static {v0, v1, p4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0

    .line 156
    :cond_2
    const-string v4, "failed"

    goto :goto_1
.end method
