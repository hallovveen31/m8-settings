.class public Lcom/android/settings/quicklaunch/BookmarkPicker;
.super Lcom/android/settings/framework/app/InternalListActivity;
.source "BookmarkPicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# static fields
.field private static final DISPLAY_MODE_LAUNCH:I = 0x0

.field private static final DISPLAY_MODE_SHORTCUT:I = 0x1

.field public static final EXTRA_SHORTCUT:Ljava/lang/String; = "com.android.settings.quicklaunch.SHORTCUT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.android.settings.quicklaunch.TITLE"

.field private static final KEY_RESOLVE_INFO:Ljava/lang/String; = "RESOLVE_INFO"

.field private static final KEY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BookmarkPicker"

.field private static final sKeys:[Ljava/lang/String;

.field private static sLaunchIntent:Landroid/content/Intent;

.field private static final sResourceIds:[I

.field private static sShortcutIntent:Landroid/content/Intent;


# instance fields
.field private mDisplayMode:I

.field private mMyAdapter:Landroid/widget/SimpleAdapter;

.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 83
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RESOLVE_INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    .line 84
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2at 0x0t 0x9t 0x7ft
        0x29t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/framework/app/InternalListActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillResolveList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    return-object p1
.end method

.method private createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040017

    sget-object v4, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 210
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 211
    return-object v0
.end method

.method private ensureIntents()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    .line 144
    :cond_0
    return-void
.end method

.method private fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 218
    .local v3, resolveListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 219
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 226
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 227
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v4, "RESOLVE_INFO"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private fillResolveList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->ensureIntents()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 198
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 200
    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-nez v1, :cond_1

    .line 201
    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 203
    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private finish(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 312
    const-string v0, "com.android.settings.quicklaunch.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish()V

    .line 315
    return-void
.end method

.method private static getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "info"
    .parameter "action"

    .prologue
    .line 265
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 267
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    return-object v1
.end method

.method private getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    .local v0, label:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 237
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startShortcutActivity(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 278
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p1, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    return-void
.end method

.method private updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/quicklaunch/BookmarkPicker$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker$2;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method private updateListAndAdapter()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;

    const-string v1, "data updater"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->start()V

    .line 172
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 286
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/InternalListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 293
    :pswitch_0
    if-eqz p3, :cond_0

    .line 294
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/InternalListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    const v0, 0x7f0c1016

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080332

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 106
    const v0, 0x7f0c1017

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108034a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 246
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    const-string v2, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 251
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startShortcutActivity(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 136
    :goto_0
    return v0

    .line 124
    :pswitch_0
    iput v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    .line 135
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    move v0, v1

    .line 136
    goto :goto_0

    .line 128
    :pswitch_1
    iput v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eq v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    return v1

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090029

    if-ne v1, v2, :cond_1

    .line 322
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_0
    const/4 v1, 0x1

    .line 328
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .restart local p1
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
