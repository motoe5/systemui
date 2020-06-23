.class Lcom/android/systemui/doze/DozeLog$SummaryStats;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryStats"
.end annotation


# instance fields
.field private mCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeLog$SummaryStats;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>()V

    return-void
.end method


# virtual methods
.method public append()V
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    .line 256
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 259
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    if-nez v2, :cond_0

    return-void

    .line 260
    :cond_0
    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, ": n="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    const-string/jumbo v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v2, p0, Lcom/android/systemui/doze/DozeLog$SummaryStats;->mCount:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->-get0()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 266
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 265
    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    mul-double v0, v2, v8

    .line 267
    .local v0, "perHr":D
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    .line 268
    const-string/jumbo v2, "/hr)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 270
    return-void
.end method
