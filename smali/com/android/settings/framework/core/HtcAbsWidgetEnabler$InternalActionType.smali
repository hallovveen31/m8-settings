.class final enum Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;
.super Ljava/lang/Enum;
.source "HtcAbsWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InternalActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_BIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_BIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_ON_ACTIVATE_ENABLER:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_ON_CHECKED_CHANGED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_ON_RECEIVE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_ON_TOGGLE_CHANGE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_UNBIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

.field public static final enum POST_UNBIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_ON_ACTIVATE_ENABLER"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_ACTIVATE_ENABLER:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 138
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_ON_RECEIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_RECEIVE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 139
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_BIND_HEADER_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 140
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_UNBIND_HEADER_VIEW"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 141
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_BIND_TOGGLE_BUTTON"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 142
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_UNBIND_TOGGLE_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 143
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_ON_CHECKED_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_CHECKED_CHANGED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 144
    new-instance v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    const-string v1, "POST_ON_TOGGLE_CHANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_TOGGLE_CHANGE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    .line 136
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_ACTIVATE_ENABLER:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_RECEIVE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_HEADER_VIEW:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_BIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_UNBIND_TOGGLE_BUTTON:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_CHECKED_CHANGED:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->POST_ON_TOGGLE_CHANGE:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->$VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->$VALUES:[Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$InternalActionType;

    return-object v0
.end method
