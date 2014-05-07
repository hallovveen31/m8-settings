.class public abstract Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcAbstractAppAssociationsPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_SET_ASSOCIATION_APP:I = 0x1

.field private static final MESSAGE_ON_SET_SUMMARY:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppEntries:[Ljava/lang/String;

.field private mAppEntries2:[Ljava/lang/String;

.field private mAppEntryValues:[Ljava/lang/String;

.field private mAppIconResIds:[Landroid/graphics/drawable/Drawable;

.field private mAppNames:[Ljava/lang/String;

.field private mClickedDialogEntryIndex:I

.field private mComponentNames:[Ljava/lang/String;

.field private mContext:Lcom/htc/preference/HtcPreferenceActivity;

.field private mNonUiHandler:Landroid/os/Handler;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->initialize(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->initialize(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getAssoAppFromPackageManager()V
    .locals 11

    .prologue
    .line 307
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getActivityList()Ljava/util/List;

    move-result-object v2

    .line 311
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 360
    :cond_1
    return-void

    .line 319
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    .line 320
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    .line 321
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    .line 322
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    .line 324
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    .line 326
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 327
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 329
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v1

    .line 331
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 332
    :cond_3
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v1

    .line 335
    :cond_4
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 337
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 342
    .local v5, tempApplocationLabel:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 343
    :cond_5
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    aget-object v9, v9, v1

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 353
    :goto_1
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 354
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v1

    .line 355
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v0, component:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 358
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 348
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_6
    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto :goto_1
.end method

.method private getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "resolveInfo"

    .prologue
    const/4 v2, 0x0

    .line 621
    if-nez p1, :cond_1

    move-object v1, v2

    .line 656
    :cond_0
    :goto_0
    return-object v1

    .line 625
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 630
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.htc.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 632
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 638
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 642
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 648
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 651
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 656
    goto :goto_0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    check-cast p1, Lcom/htc/preference/HtcPreferenceActivity;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    .line 119
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setKey(Ljava/lang/String;)V

    .line 131
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPersistent(Z)V

    .line 152
    return-void
.end method

.method private removeThisPreference()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 559
    :cond_0
    return-void
.end method

.method private setCurrentAppPreferActivity()V
    .locals 6

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getPreferenceActivityPackage()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, mCurrentPreferPackage:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 269
    const-string v2, ""

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mPackageMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package doesn\'t exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->isHidePreference()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 289
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, component:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPreferredActivity(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 294
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    const-string v4, " ERROR: set default app fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private syncSummary()V
    .locals 8

    .prologue
    .line 227
    const-string v2, ""

    .line 229
    .local v2, summary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v4

    if-ltz v4, :cond_1

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v1

    .line 233
    .local v1, i:I
    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, tempAppName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    :cond_0
    move-object v2, v3

    .line 255
    .end local v1           #i:I
    .end local v3           #tempAppName:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    new-instance v6, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void

    .line 240
    .restart local v1       #i:I
    .restart local v3       #tempAppName:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 241
    iget-object v4, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v2, v4, v1

    goto :goto_0

    .line 244
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 247
    .end local v1           #i:I
    .end local v3           #tempAppName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method protected abstract getActivityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomSummary()Ljava/lang/String;
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract getInfoTypeName()Ljava/lang/String;
.end method

.method protected abstract getPreferenceActivityPackage()Ljava/lang/String;
.end method

.method public isHidePreference()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 510
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 511
    invoke-super {p0}, Lcom/htc/preference/HtcListPreference;->onClick()V

    .line 513
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 517
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 519
    if-gez p2, :cond_0

    .line 538
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValueIndex(I)V

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 528
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntryValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppNames:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .local v0, component:Landroid/content/ComponentName;
    sget-object v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setPreferredActivity(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 480
    .local v1, mEntryValues:[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    if-ltz v3, :cond_0

    if-eqz v1, :cond_0

    .line 481
    iget v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->syncSummary()V

    .line 492
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "uiHandler"
    .parameter "nonUiHandler"

    .prologue
    .line 547
    iput-object p3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUiHandler:Landroid/os/Handler;

    .line 548
    iput-object p2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mUiHandler:Landroid/os/Handler;

    .line 549
    return-void
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 564
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 567
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 568
    const/4 v1, 0x0

    .line 588
    :goto_0
    return v1

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getAssoAppFromPackageManager()V

    .line 577
    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mComponentNames:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 580
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setCurrentAppPreferActivity()V

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->isHidePreference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->removeThisPreference()V

    .line 587
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->syncSummary()V

    .line 588
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final onHandleUiMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 594
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 597
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 601
    :goto_0
    return v1

    .line 600
    :cond_0
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onSetSummary(Ljava/lang/String;)V

    .line 601
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    const/4 v7, 0x0

    .line 365
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0a01

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, dialogTitle:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getInfoTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 373
    new-instance v0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;

    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;

    const v3, 0x7f04007b

    const v4, 0x7f09003a

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;-><init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 456
    .local v0, mListAdapter:Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I

    move-result v1

    new-instance v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;-><init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 467
    invoke-virtual {p1, v7, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 470
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mNonUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    return-void
.end method

.method protected onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method protected abstract setPreferredActivity(Landroid/content/ComponentName;)V
.end method

.method public setRootScreen(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mParentPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 616
    return-void
.end method
