.class public Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;
.super Ljava/lang/Object;
.source "HtcHeaderEventDelegator.java"


# static fields
.field private static final HTC_DEVELOPER_REMIND_AGAIN:Ljava/lang/String; = "htc_developer_remind_again"

.field private static final TAG:Ljava/lang/String;

.field private static mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static delegrateOnListItemClick(Ljava/lang/Object;Landroid/view/View;IJLcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)Z
    .locals 8
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .parameter "wrapHeader"
    .parameter "activity"
    .annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
        value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    iget-object v4, p5, Lcom/android/settings/framework/activity/HtcWrapHeader;->type:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    sget-object v5, Lcom/android/settings/framework/activity/HtcWrapHeader$Type;->SWITCH_ONLY:Lcom/android/settings/framework/activity/HtcWrapHeader$Type;

    if-ne v4, v5, :cond_0

    .line 63
    const v3, 0x7f09000f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcToggleButtonLight;

    .line 65
    .local v1, toggleButton:Lcom/htc/widget/HtcToggleButtonLight;
    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->toggle()V

    .line 87
    .end local v1           #toggleButton:Lcom/htc/widget/HtcToggleButtonLight;
    :goto_0
    return v2

    .line 70
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x4090

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 71
    invoke-virtual {p6}, Lcom/htc/preference/HtcPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_developer_remind_again"

    invoke-static {v4, v5, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, NeedRemind:Z
    iget-object v4, p5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f090324

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-static {p2, p5, p6}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->showDeveloperOptionWarning(ILcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)V

    goto :goto_0

    .line 80
    .end local v0           #NeedRemind:Z
    :cond_1
    iget-object v4, p5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    iget-wide v4, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0902ff

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 81
    iget-object v4, p5, Lcom/android/settings/framework/activity/HtcWrapHeader;->info:Lcom/htc/preference/HtcPreferenceActivity$Header;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.bluetooth.htcmini.HtcMiniMainActivity"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "start"

    invoke-static {}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->hasConnection()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x1400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v4, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_2
    move v2, v3

    .line 87
    goto :goto_0

    :cond_3
    move v2, v3

    .line 81
    goto :goto_1
.end method

.method public static dismissDeveloperWarningDialog()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 96
    :cond_0
    return-void
.end method

.method private static showDeveloperOptionWarning(ILcom/android/settings/framework/activity/HtcWrapHeader;Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 11
    .parameter "position"
    .parameter "wrapHeader"
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    .line 104
    const v6, 0x7f040062

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 107
    .local v4, v:Landroid/view/View;
    const v6, 0x7f0900bd

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 109
    .local v3, layout:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM1()I

    move-result v6

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM5()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM1()I

    move-result v8

    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM3()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 115
    const v6, 0x7f0900be

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 117
    .local v5, warningText:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/framework/widget/HtcUiStyler;->getMarginM3()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v10, v10, v10, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    const v6, 0x7f0900bf

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 122
    .local v2, checkBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 126
    const v6, 0x7f0900c0

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, askText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 128
    new-instance v6, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;

    invoke-direct {v6, v2}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$1;-><init>(Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c1029

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;

    invoke-direct {v8, v2, p2, p1, p0}, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator$2;-><init>(Lcom/htc/widget/HtcCheckBox;Lcom/htc/preference/HtcPreferenceActivity;Lcom/android/settings/framework/activity/HtcWrapHeader;I)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 155
    .local v1, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 157
    sget-object v6, Lcom/android/settings/framework/activity/HtcHeaderEventDelegator;->mDeveloperWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 158
    return-void
.end method
