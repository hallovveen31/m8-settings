.class public final enum Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
.super Ljava/lang/Enum;
.source "HtcIStorageVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum BAD_REMOVAL:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum CHECKING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum FORMATTING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum MOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum MOUNTED_READ_ONLY:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum NOFS:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum REMOVED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum SHARED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum UNMOUNTABLE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

.field public static final enum UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;


# instance fields
.field private final mState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "BAD_REMOVAL"

    const-string v2, "bad_removal"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->BAD_REMOVAL:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "CHECKING"

    const-string v2, "checking"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->CHECKING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "FORMATTING"

    const-string v2, "formatting"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->FORMATTING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "MOUNTED"

    const-string v2, "mounted"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "MOUNTED_READ_ONLY"

    const-string v2, "mounted_ro"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED_READ_ONLY:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "NOFS"

    const/4 v2, 0x5

    const-string v3, "nofs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->NOFS:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "REMOVED"

    const/4 v2, 0x6

    const-string v3, "removed"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->REMOVED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "SHARED"

    const/4 v2, 0x7

    const-string v3, "shared"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->SHARED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "UNMOUNTABLE"

    const/16 v2, 0x8

    const-string v3, "unmountable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTABLE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    new-instance v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const-string v1, "UNMOUNTED"

    const/16 v2, 0x9

    const-string v3, "unmounted"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->BAD_REMOVAL:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->CHECKING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->FORMATTING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED_READ_ONLY:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->NOFS:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->REMOVED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->SHARED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTABLE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->mState:Ljava/lang/String;

    return-void
.end method

.method public static getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->BAD_REMOVAL:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->CHECKING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->FORMATTING:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED_READ_ONLY:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->MOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->NOFS:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_5
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->REMOVED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_6
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->SHARED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTED:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->UNMOUNTABLE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6d -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x73 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->$VALUES:[Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->mState:Ljava/lang/String;

    return-object v0
.end method
