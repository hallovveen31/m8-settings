.class public Lcom/android/settings/ZonePickerEx;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "ZonePickerEx.java"

# interfaces
.implements Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_TIME_ZONE_DISPLAY_NAME:Ljava/lang/String; = "key_time_zone_display_name"

.field private static final KEY_TIME_ZONE_ID:Ljava/lang/String; = "key_time_zone_id"

.field private static final STATUS_BAR_BACKGROUND_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZonePickerEx"


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ZonePickerEx;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ZonePickerEx;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iput-object v0, p0, Lcom/android/settings/ZonePickerEx;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-void
.end method

.method private configActionBar()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iget-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarText:Lcom/htc/widget/ActionBarText;

    iget-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f0c0c48

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/ZonePickerEx;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v2, Lcom/android/settings/ZonePickerEx$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ZonePickerEx$1;-><init>(Lcom/android/settings/ZonePickerEx;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/settings/ZonePickerEx;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZonePickerEx"

    const-string v3, "actionBarContainer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/settings/ZonePickerEx;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZonePickerEx"

    const-string v3, "mActionBarExt is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/settings/ZonePickerEx;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZonePickerEx"

    const-string v3, "actionBar is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setResultLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_time_zone_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_time_zone_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method private setupTranslucentStatusBar()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020071

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    const v5, 0x1020002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    sget-object v5, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f090101

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f04008c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/android/settings/ZonePickerInternal;

    invoke-direct {v2}, Lcom/android/settings/ZonePickerInternal;-><init>()V

    invoke-virtual {v2, p0}, Lcom/android/settings/ZonePickerInternal;->setZoneSelectionListener(Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;)V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ZonePickerEx;->configActionBar()V

    invoke-direct {p0}, Lcom/android/settings/ZonePickerEx;->setupTranslucentStatusBar()V

    return-void

    :cond_1
    instance-of v3, v1, Lcom/android/settings/ZonePickerInternal;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/settings/ZonePickerInternal;

    invoke-virtual {v1, p0}, Lcom/android/settings/ZonePickerInternal;->setZoneSelectionListener(Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;)V

    goto :goto_0
.end method

.method public onZoneIdAndNameReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ZonePickerEx;->setResultLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
