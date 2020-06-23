.class Lcom/android/keyguard/KeyguardUpdateMonitor$MotoSurveyIntent;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotoSurveyIntent"
.end annotation


# static fields
.field public static sInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1491
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor$MotoSurveyIntent;->sInstalled:Z

    .line 1482
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
