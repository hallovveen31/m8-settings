.class public Lcom/android/settings/ActivityPicker;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "ActivityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$EmptyDrawable;,
        Lcom/android/settings/ActivityPicker$IconResizer;,
        Lcom/android/settings/ActivityPicker$PickAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

.field private mBaseIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntentForPosition(I)Landroid/content/Intent;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    iget-object v1, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v10, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v10, v11, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;

    iget-object v10, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    new-instance v10, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v10, p0, v6, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v10, v5}, Lcom/android/settings/ActivityPicker;->putIntentItems(Landroid/content/Intent;Ljava/util/List;)V

    :cond_1
    return-object v5

    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/settings/ActivityPicker;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getItems()Ljava/util/List;

    move-result-object v1

    new-instance v4, Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    iget-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->setupAlert()V

    return-void

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method protected putIntentItems(Landroid/content/Intent;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v5, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
