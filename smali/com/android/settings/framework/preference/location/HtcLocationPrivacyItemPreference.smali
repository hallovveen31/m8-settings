.class public Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcLocationPrivacyItemPreference.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final STATUS_ALWAYS_ON:I = 0x1

.field private static final STATUS_OFF:I = 0x0

.field private static final STATUS_OFF_FIRST_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "content://com.htc.privacy/packages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "uid"
    .parameter "packageName"
    .parameter "status"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 39
    iput p2, p0, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->mUid:I

    .line 40
    invoke-direct {p0, p3, p4}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->initialize(Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method private initialize(Ljava/lang/String;I)V
    .locals 6
    .parameter "packageName"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 48
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x1000

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 49
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    move-object v2, p1

    .line 53
    .local v2, mApplicationName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 57
    :cond_0
    if-ne p2, v4, :cond_2

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->setChecked(Z)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #mApplicationName:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return-void

    .line 57
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #mApplicationName:Ljava/lang/CharSequence;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 60
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #mApplicationName:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onClick()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "uid=?"

    new-array v2, v2, [Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/framework/preference/location/HtcLocationPrivacyItemPreference;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v1, v4, v0, v5, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void

    :cond_0
    move v1, v3

    .line 87
    goto :goto_0
.end method
