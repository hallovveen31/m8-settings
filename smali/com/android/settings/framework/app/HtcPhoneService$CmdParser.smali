.class Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;
.super Ljava/lang/Object;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmdParser"
.end annotation


# static fields
.field private static final DATA_BEGIN_LENGTH:I = 0x8

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final HEADER_LENGTH:I = 0x6

.field private static final MIN_DATA_LENGTH:I = 0x10

.field private static final MIN_LENGTH:I = 0x1c

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field public static final STATE_SEND_ALREADY_AND_FAILED:I = 0x1

.field public static final STATE_SEND_ALREADY_AND_NOT_SUPPORT:I = 0x2

.field public static final STATE_SEND_ALREADY_AND_SUCCESS:I


# instance fields
.field private bParseResult:Z

.field private mDataRxCounter:J

.field private mDataTxCounter:J

.field private mMoHomeCounter:J

.field private mMoHomeTimer:J

.field private mMoRoamCounter:J

.field private mMoRoamTimer:J

.field private mMtHomeCounter:J

.field private mMtHomeTimer:J

.field private mMtRoamCounter:J

.field private mMtRoamTimer:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 763
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    .line 764
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    .line 765
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    .line 766
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    .line 768
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    .line 769
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    .line 770
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    .line 771
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    .line 773
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    .line 774
    iput-wide v1, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/app/HtcPhoneService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;-><init>()V

    return-void
.end method

.method private getResult(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "cmd"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 885
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, val:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    .line 898
    .end local v5           #val:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 890
    .restart local v5       #val:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 891
    .local v2, length:I
    const-string v3, ""

    .line 892
    .local v3, reverse:Ljava/lang/String;
    move-object v4, v5

    .line 893
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v6, v2, 0x2

    if-ge v0, v6, :cond_1

    .line 894
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 895
    .local v1, len:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x2

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 896
    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object v5, v3

    .line 898
    goto :goto_0
.end method

.method private parseDataCallResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 810
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseDataCallResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 818
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, tx:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    .line 816
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, rx:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    goto :goto_0
.end method

.method private parseMoHomeResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 825
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 826
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMoHomeResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 834
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    .line 832
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    goto :goto_0
.end method

.method private parseMoRoamResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 858
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMoRoamResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 866
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    .line 864
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    goto :goto_0
.end method

.method private parseMtHomeResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 842
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMtHomeResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 850
    :goto_0
    return-void

    .line 846
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    .line 848
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    goto :goto_0
.end method

.method private parseMtRoamResponse(Ljava/lang/String;)V
    .locals 7
    .parameter "cmd"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/16 v4, 0x10

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 874
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseMtRoamResponse error - too short"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput-boolean v5, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 882
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, timer:Ljava/lang/String;
    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    .line 880
    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, counter:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    goto :goto_0
.end method


# virtual methods
.method getCallCounter()J
    .locals 4

    .prologue
    .line 954
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeCounter:J

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeCounter:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamCounter:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamCounter:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getCallTimer()J
    .locals 4

    .prologue
    .line 958
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoHomeTimer:J

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtHomeTimer:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMoRoamTimer:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mMtRoamTimer:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getDataRx()J
    .locals 2

    .prologue
    .line 962
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataRxCounter:J

    return-wide v0
.end method

.method getDataTx()J
    .locals 2

    .prologue
    .line 966
    iget-wide v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->mDataTxCounter:J

    return-wide v0
.end method

.method getParseResult()Z
    .locals 1

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    return v0
.end method

.method parseCmd(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 781
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    .line 782
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCmd error, too short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iput-boolean v4, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    .line 802
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, header:Ljava/lang/String;
    const-string v1, "C8F81E0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseDataCallResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    const-string v1, "C8F81A0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMoHomeResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_2
    const-string v1, "C8F81B0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 793
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMoRoamResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_3
    const-string v1, "C8F81C0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 795
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMtHomeResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_4
    const-string v1, "C8F81D0000"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 797
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->parseMtRoamResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCmd error, unknown header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput-boolean v4, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    goto/16 :goto_0
.end method

.method validateStateOfNv(Ljava/lang/String;)I
    .locals 6
    .parameter "command"

    .prologue
    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_1

    .line 907
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "validateStateOfNv error: too short"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v2, 0x1

    .line 946
    :cond_0
    :goto_0
    return v2

    .line 911
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, errState:Ljava/lang/String;
    const-string v0, ""

    .line 913
    .local v0, errMsg:Ljava/lang/String;
    const/4 v2, -0x1

    .line 914
    .local v2, state:I
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 915
    const/4 v2, 0x0

    .line 916
    const-string v0, ""

    .line 942
    :goto_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 943
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command state is error, reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/framework/app/HtcPhoneService$CmdParser;->bParseResult:Z

    goto :goto_0

    .line 917
    :cond_2
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 918
    const/4 v2, 0x1

    .line 919
    const-string v0, "internal dmss used"

    goto :goto_1

    .line 920
    :cond_3
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 921
    const/4 v2, 0x1

    .line 922
    const-string v0, "can\'t recognize command"

    goto :goto_1

    .line 923
    :cond_4
    const-string v3, "0300"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 924
    const/4 v2, 0x1

    .line 925
    const-string v0, "memory is full"

    goto :goto_1

    .line 926
    :cond_5
    const-string v3, "0400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 927
    const/4 v2, 0x1

    .line 928
    const-string v0, "command is fail"

    goto :goto_1

    .line 929
    :cond_6
    const-string v3, "0500"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 930
    const/4 v2, 0x2

    .line 931
    const-string v0, "not support this command"

    goto :goto_1

    .line 932
    :cond_7
    const-string v3, "0600"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 933
    const/4 v2, 0x2

    .line 934
    const-string v0, "bad command parameters or not exists"

    goto :goto_1

    .line 935
    :cond_8
    const-string v3, "0700"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 936
    const/4 v2, 0x1

    .line 937
    const-string v0, "memeory is read only"

    goto :goto_1

    .line 939
    :cond_9
    const/4 v2, 0x1

    .line 940
    const-string v0, "command error with non-knowing reason"

    goto :goto_1
.end method
