.class public final enum Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;
.super Ljava/lang/Enum;
.source "HtcAbsWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WidgetActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum CREATE_ALERT_DIALOG:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_ICON_COLOR_FILTER_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_LISTITEM_SUMMARY:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_MULTI_PROPERTIES:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_SWITCH_CLICKABLE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

.field public static final enum SET_SWITCH_TOGGLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_LISTITEM_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 106
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_LISTITEM_SUMMARY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_SUMMARY:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 113
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_ICON_COLOR_FILTER_ENABLED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_ICON_COLOR_FILTER_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 116
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_SWITCH_CLICKABLE"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_CLICKABLE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 119
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_SWITCH_ENABLED"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 122
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_SWITCH_TOGGLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_TOGGLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 128
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "SET_MULTI_PROPERTIES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_MULTI_PROPERTIES:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 133
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    const-string v1, "CREATE_ALERT_DIALOG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->CREATE_ALERT_DIALOG:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_LISTITEM_SUMMARY:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_ICON_COLOR_FILTER_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_CLICKABLE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_ENABLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_SWITCH_TOGGLED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->SET_MULTI_PROPERTIES:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->CREATE_ALERT_DIALOG:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->$VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 100
    const-class v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->$VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$WidgetActionType;

    return-object v0
.end method
