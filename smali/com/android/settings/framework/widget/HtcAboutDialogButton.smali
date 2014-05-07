.class public Lcom/android/settings/framework/widget/HtcAboutDialogButton;
.super Lcom/htc/widget/HtcRimButton;
.source "HtcAboutDialogButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HTC_APP_DETAIL:Ljava/lang/String; = "htc_app_detail"

.field private static final HTC_APP_VERSION_ID:Ljava/lang/String; = "ap_version_id"

.field private static final HTC_PRIVATE_APP:Ljava/lang/String; = "htc_private_app"


# instance fields
.field private mAboutDialog:Landroid/app/Dialog;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mOrientationChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    return-void
.end method

.method private prepareAboutDialog()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":string/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ap_version_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const-string v2, ""

    :goto_0
    const-string v8, "ro.build.changelist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    move-object v2, v3

    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":string/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "htc_app_detail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    const-string v0, ""

    :goto_2
    return-void

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method private supportAboutDialog(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":string/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "htc_private_app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndShowAgain()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 1

    const v0, 0x7f0c0575

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->dismissAndShowAgain()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    return-void
.end method

.method public setAutoVisibility(Landroid/content/pm/ApplicationInfo;)I
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "The parameter appInfo should not be null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->supportAboutDialog(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    goto :goto_0
.end method
