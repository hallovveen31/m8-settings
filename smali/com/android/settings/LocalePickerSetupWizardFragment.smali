.class public Lcom/android/settings/LocalePickerSetupWizardFragment;
.super Lcom/android/settings/LocalePicker;
.source "LocalePickerSetupWizardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_LocalePickerSetupWizardFragment"


# instance fields
.field private am:Landroid/app/IActivityManager;

.field private mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

.field private mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

.field private mSelectLocale:Ljava/util/Locale;

.field private mSelectPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    .line 52
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/LocalePickerSetupWizardFragment;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectLocale:Ljava/util/Locale;

    return-object p1
.end method

.method private initListView(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 131
    .local v0, list:Landroid/widget/ListView;
    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 132
    iput p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    .line 133
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    iget v2, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    invoke-virtual {v1, v2}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectLocale:Ljava/util/Locale;

    .line 134
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    iget v2, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    invoke-virtual {v1, v2}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->setSelect(I)V

    .line 135
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    .line 62
    const-string v6, "OOBE_LocalePickerSetupWizardFragment"

    const-string v7, "initialize"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v6, Lcom/android/settings/LocalePickerSetupWizardFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/LocalePickerSetupWizardFragment$1;-><init>(Lcom/android/settings/LocalePickerSetupWizardFragment;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/LocalePickerSetupWizardFragment;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 76
    .local v1, count:I
    new-array v6, v1, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iput-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 78
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 80
    iget-object v7, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v6, v7, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v6, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v6, v7, v8}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;-><init>(Landroid/content/Context;[Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    iput-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    .line 83
    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {p0, v6}, Lcom/android/settings/LocalePickerSetupWizardFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    if-eqz v6, :cond_3

    .line 89
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->am:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_6

    .line 92
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .local v4, locale:Ljava/util/Locale;
    move v5, v1

    .line 94
    .local v5, n:I
    const/4 v2, -0x1

    .line 95
    .local v2, defValue:I
    const/4 v3, 0x0

    .line 97
    :goto_1
    if-ge v3, v5, :cond_1

    .line 99
    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-direct {p0, v3}, Lcom/android/settings/LocalePickerSetupWizardFragment;->initListView(I)V

    .line 110
    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    if-eqz v6, :cond_2

    .line 112
    const-string v6, "OOBE_LocalePickerSetupWizardFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "locale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found, use default!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v2}, Lcom/android/settings/LocalePickerSetupWizardFragment;->initListView(I)V

    .line 117
    :cond_2
    const-string v6, "OOBE_LocalePickerSetupWizardFragment"

    const-string v7, "config != null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #defValue:I
    .end local v4           #locale:Ljava/util/Locale;
    .end local v5           #n:I
    :cond_3
    :goto_2
    return-void

    .line 104
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #defValue:I
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v5       #n:I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mLocaleInfo:[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 106
    move v2, v3

    .line 97
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    .end local v2           #defValue:I
    .end local v4           #locale:Ljava/util/Locale;
    .end local v5           #n:I
    :cond_6
    const-string v6, "OOBE_LocalePickerSetupWizardFragment"

    const-string v7, "config == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    .end local v0           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private isVerizon()Z
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSelectedLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 56
    const-string v0, "OOBE_LocalePickerSetupWizardFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 140
    invoke-super/range {p0 .. p5}, Lcom/android/settings/LocalePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 142
    iget v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    if-eq v0, p3, :cond_1

    .line 143
    const-string v0, "OOBE_LocalePickerSetupWizardFragment"

    const-string v1, "selected locale changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mAdapter:Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/LocalePickerSetupWizardFragment$MyArrayAdapter;->setSelect(I)V

    .line 148
    :cond_0
    iput p3, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    .line 149
    invoke-virtual {p1}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->updateLocale()V

    .line 156
    :cond_1
    const-string v0, "OOBE_LocalePickerSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "OOBE_LocalePickerSetupWizardFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Lcom/android/settings/LocalePicker;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/settings/LocalePicker;->onStart()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->initialize()V

    .line 170
    return-void
.end method

.method public updateLocale()V
    .locals 5

    .prologue
    .line 266
    const-string v2, "OOBE_LocalePickerSetupWizardFragment"

    const-string v3, "updateLocale"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 271
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LocaleChange"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    invoke-static {v1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 274
    return-void
.end method
