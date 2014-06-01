: <<'END'
"org.liveSense.launchpad"
"org.liveSense.dist"
END

projects=(
"org.liveSense.auth.ldap"
"org.liveSense.content.initial"
"org.liveSense.core"
"org.liveSense.fragment.com.sun.image.codec.jpeg"
"org.liveSense.fragment.customloginpage"
"org.liveSense.fragment.jackrabbit.server.jaybird.ddl"
"org.liveSense.fragment.javax.activation-jre-1.6"
"org.liveSense.fragment.javax.jws-jre-1.6"
"org.liveSense.fragment.javax.xml-jre-1.6"
"org.liveSense.fragment.sun.misc"
"org.liveSense.fragment.sun.security"
"org.liveSense.framework.apacheds"
"org.liveSense.framework.cxf"
"org.liveSense.framework.docx4j"
"org.liveSense.framework.dom4j"
"org.liveSense.framework.fitnesse"
"org.liveSense.framework.gwt"
"org.liveSense.framework.gxt"
"org.liveSense.framework.itext"
"org.liveSense.framework.jasperreports"
"org.liveSense.framework.jodconverter"
"org.liveSense.framework.jodreports"
"org.liveSense.framework.lucene"
"org.liveSense.framework.odfdom"
"org.liveSense.framework.poi"
"org.liveSense.framework.solr"
"org.liveSense.framework.wro4j"
"org.liveSense.framework.xdocreport"
"org.liveSense.jdbc.h2"
"org.liveSense.jdbc.jaybird"
"org.liveSense.jdbc.mysql"
"org.liveSense.misc.configurationLoader"
"org.liveSense.misc.gwt.jsr303"
"org.liveSense.misc.i18n"
"org.liveSense.misc.javax.persistence"
"org.liveSense.misc.jcrom"
"org.liveSense.misc.jsr303"
"org.liveSense.misc.log.config.default"
"org.liveSense.misc.log.lilith.core"
"org.liveSense.misc.queryBuilder"
"org.liveSense.misc.queryBuilder.gwt"
"org.liveSense.scripting.jsp.taglib.jsonatg"
"org.liveSense.scripting.jsp.taglib.jstl"
"org.liveSense.service.securityManager"
"org.liveSense.service.activation"
"org.liveSense.service.apacheds"
"org.liveSense.service.apacheds.configurationLoader"
"org.liveSense.service.captcha"
"org.liveSense.service.cxf"
"org.liveSense.service.dataSourceProvider"
"org.liveSense.service.email"
"org.liveSense.service.guacamole"
"org.liveSense.service.gwt"
"org.liveSense.service.jcr.importexport"
"org.liveSense.service.languageSelector"
"org.liveSense.service.markdown"
"org.liveSense.service.report.jasper"
"org.liveSense.service.solr"
"org.liveSense.service.solr.configurationLoader"
"org.liveSense.service.thumbnailGenerator"
"org.liveSense.service.xssRemove"
"org.liveSense.jcr.explorer"
"org.liveSense.jcr.restexplorer"
"org.liveSense.webconsole.branding"
"org.liveSense.sample.configurationLoad"
"org.liveSense.sample.gwt.notes"
"org.liveSense.sample.gwt.notesRequestFactory"
"org.liveSense.sample.markdown"
"org.liveSense.sample.simplePortal"
"org.liveSense.sample.solr"
"org.liveSense.sample.webServiceServlet"
"org.liveSense.karaf"
)

for p in ${!projects[*]}
do
    cd "${projects[$p]}"
    git checkout master
    OUT=$?
    if [ $OUT -ne 0 ];then
        echo "ERROR ON CHECKOUT MASTER: ${PWD##*/}"
        exit 1;
    fi
    cd ..
done
