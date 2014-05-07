.class public final enum Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;
.super Ljava/lang/Enum;
.source "HtcActivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityLifecycle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_ACTIVITY_RESULT:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_ACTIVITY_RESULT_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_DESTROY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_DESTROY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_DISPLAY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_DISPLAY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_PAUSE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_PAUSE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_POST_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_POST_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_POST_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_POST_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_RESTART:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_RESTART_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_START:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_START_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_STOP:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

.field public static final enum ON_STOP_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_POST_CREATE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_START:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_RESTART"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_POST_RESUME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_DISPLAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DISPLAY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_PAUSE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_STOP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_STOP:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_DESTROY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DESTROY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_ACTIVITY_RESULT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_ACTIVITY_RESULT:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_CREATE_IN_BACKGROUND"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_POST_CREATE_IN_BACKGROUND"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_START_IN_BACKGROUND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_START_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_RESTART_IN_BACKGROUND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_RESUME_IN_BACKGROUND"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_POST_RESUME_IN_BACKGROUND"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_DISPLAY_IN_BACKGROUND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DISPLAY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_PAUSE_IN_BACKGROUND"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_PAUSE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_STOP_IN_BACKGROUND"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_STOP_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_DESTROY_IN_BACKGROUND"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DESTROY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    new-instance v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const-string v1, "ON_ACTIVITY_RESULT_IN_BACKGROUND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_ACTIVITY_RESULT_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_CREATE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_START:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_RESUME:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DISPLAY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_PAUSE:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_STOP:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DESTROY:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_ACTIVITY_RESULT:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_CREATE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_START_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESTART_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_POST_RESUME_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DISPLAY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_PAUSE_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_STOP_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_DESTROY_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->ON_ACTIVITY_RESULT_IN_BACKGROUND:Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->$VALUES:[Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;
    .locals 1

    const-class v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;->$VALUES:[Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/app/HtcActivityListener$ActivityLifecycle;

    return-object v0
.end method
