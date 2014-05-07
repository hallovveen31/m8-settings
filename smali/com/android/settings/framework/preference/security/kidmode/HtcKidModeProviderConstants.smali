.class Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;
.super Ljava/lang/Object;
.source "HtcKidModeProviderConstants.java"


# static fields
.field public static final ALLOW_INCOMING_CALL_URI:Landroid/net/Uri; = null

.field private static final AUTHORITY:Ljava/lang/String; = "com.zoodles.kidmode.provider.settings"

.field public static final CODE_ALLOW_INCOMING_CALL:I = 0x64

.field public static final CODE_EXIT_ACTION:I = 0x6e

.field public static final COLUMN_NAME:Ljava/lang/String; = "prefs_value"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final EXIT_ACTION_BIRTH_YEAR:I = 0x16

.field public static final EXIT_ACTION_DRAW_Z:I = 0xb

.field public static final EXIT_ACTION_URI:Landroid/net/Uri; = null

.field private static final PATH_SETTINGS_BASE:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.zoodles.kidmode.provider.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->ALLOW_INCOMING_CALL_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v1, 0x6e

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/kidmode/HtcKidModeProviderConstants;->EXIT_ACTION_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
